import 'package:frontend/domain/appointment/local/appointment_entity.dart';
import 'package:frontend/domain/comment/local/comment_entity.dart';
import 'package:frontend/domain/note/local/note_entity.dart';
import 'package:frontend/domain/post/local/post_entity.dart';
import 'package:frontend/domain/profile/local/profile_entity.dart';
import 'package:frontend/domain/tip/local/tip_entity.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DatabaseHelper {
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'joyfuljourney.db');
    return await openDatabase(path, version: 3, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE appointment (
          id TEXT PRIMARY KEY,
          title TEXT NOT NULL,
          body TEXT NOT NULL,
          date TEXT NOT NULL,
          time TEXT NOT NULL,
          author TEXT NOT NULL
        )
    ''');

    await db.execute('''
      CREATE TABLE comment (
        id TEXT PRIMARY KEY,
        body TEXT NOT NULL,
        postId TEXT NOT NULL,
        author TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE note (
        id TEXT PRIMARY KEY,
        body TEXT NOT NULL,
        title TEXT NOT NULL,
        author TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE post (
        id TEXT PRIMARY KEY,
        body TEXT NOT NULL,
        author TEXT NOT NULL,
        comments TEXT NOT NULL,
        likes TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE profile (
        id TEXT PRIMARY KEY,
        userName TEXT NOT NULL,
        firstName TEXT NOT NULL,
        lastName TEXT NOT NULL,
        bio TEXT NOT NULL,
        profilePicture TEXT NOT NULL,
        followers TEXT NOT NULL,
        following TEXT NOT NULL,
        posts TEXT NOT NULL,
        comments TEXT NOT NULL,
        socialMedia TEXT NOT NULL
        )
      ''');

    await db.execute('''
      CREATE TABLE tip (
        id INTEGER PRIMARY KEY,
        body TEXT NOT NULL,
        title TEXT NOT NULL,
        type TEXT NOT NULL
      ''');

    // await db.execute('''
    //   CREATE TABLE answer (
    //     id INTEGER PRIMARY KEY,
    //     content TEXT NOT NULL,
    //     upVotes INTEGER NOT NULL,
    //     downVotes INTEGER NOT NULL,
    //     userVote INTEGER NOT NULL,
    //     createdAt TEXT NOT NULL,
    //     updatedAt TEXT NOT NULL,
    //     questionId INTEGER NOT NULL, 
    //     authorId INTEGER NOT NULL,
    //     FOREIGN KEY (questionId)
    //     REFERENCES question(id),
    //     FOREIGN KEY (authorId)
    //     REFERENCES user(id) )
    //   ''');

    // await db.execute('''
    //   CREATE TABLE profile (
    //     id INTEGER PRIMARY KEY,
    //     userName TEXT NOT NULL,
    //     firstName TEXT NOT NULL,
    //     lastName TEXT NOT NULL,
    //     profilePicture TEXT NOT NULL,
    //     role TEXT NOT NULL)
    //   ''');
  }

  Future<List<Question>> getQuestions() async {
    final Database db = await database;
    final List<Map<String, dynamic>> questionsList = await db.query("question");
    List<QuestionEntity> questionEntityList = questionsList.isEmpty
        ? []
        : questionsList.map((e) => QuestionEntity.fromJson(e)).toList();
    List<Question> finalResult = [];
    for (QuestionEntity questionEntity in questionEntityList) {
      final user = await getUser(questionEntity.authorId);
      var tags = await db.query("tags",
          where: "questionId = ?", whereArgs: [questionEntity.id]);
      List<TagDto> tempTag = [];
      for (var t in tags) {
        tempTag.add(TagDto.fromJson(t));
      }
      finalResult.add(questionEntity.toQuestion(user.toUser(), tempTag));
    }
    return finalResult;
  }

  Future<List<Question>> getQuestionsByAuthorId(int authorId) async {
    final Database db = await database;
    final List<Map<String, dynamic>> questionsList = await db
        .query("question", where: "authorId = ?", whereArgs: [authorId]);
    List<QuestionEntity> questionEntityList = questionsList.isEmpty
        ? []
        : questionsList.map((e) => QuestionEntity.fromJson(e)).toList();
    List<Question> finalResult = [];
    for (QuestionEntity questionEntity in questionEntityList) {
      final user = await getUser(questionEntity.authorId);
      var tags = await db.query("tags",
          where: "questionId = ?", whereArgs: [questionEntity.id]);
      List<TagDto> tempTag = [];
      for (var t in tags) {
        tempTag.add(TagDto.fromJson(t));
      }
      finalResult.add(questionEntity.toQuestion(user.toUser(), tempTag));
    }
    return finalResult;
  }

  // get a single question
  Future<Question> getQuestion(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> questionsList =
        await db.query("question", where: "id = ?", whereArgs: [id]);
    QuestionEntity questionEntity =
        QuestionEntity.fromJson(questionsList.first);
    final user = await getUser(questionEntity.authorId);
    var tags = await db
        .query("tags", where: "questionId = ?", whereArgs: [questionEntity.id]);
    List<TagDto> tempTag = [];
    for (var t in tags) {
      tempTag.add(TagDto.fromJson(t));
    }
    return questionEntity.toQuestion(user.toUser(), tempTag);
  }

  // get answers to a question
  Future<List<AnswerEntity>> getAnswers(int questionId) async {
    final Database db = await database;
    final List<Map<String, dynamic>> answersList = await db
        .query("answer", where: "questionId = ?", whereArgs: [questionId]);
    List<AnswerEntity> answerEntityList = answersList.isEmpty
        ? []
        : answersList.map((e) => AnswerEntity.fromJson(e)).toList();
    return answerEntityList;
  }

  // get a single answer
  Future<AnswerEntity> getAnswer(int answerId) async {
    final Database db = await database;
    final List<Map<String, dynamic>> answersList =
        await db.query("answer", where: "id = ?", whereArgs: [answerId]);
    AnswerEntity answerEntity = AnswerEntity.fromJson(answersList.first);
    return answerEntity;
  }

  // Profile
  Future<Profile> getProfile(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> profileList =
        await db.query("profile", where: "id = ?", whereArgs: [id]);
    ProfileEntity profileEntity = ProfileEntity.fromJson(profileList.first);
    return profileEntity.toProfile();
  }

  // update a profile
  Future<void> putProfile(ProfileEntity profileDto) async {
    final Database db = await database;
    await db.insert("user", profileDto.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // get a single user
  Future<UserEntity> getUser(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> usersList =
        await db.query("user", where: "id = ?", whereArgs: [id]);
    UserEntity userModel = UserEntity.fromJson(usersList.first);
    return userModel;
  }

  // remove a question
  Future<void> removeQuestion(int id) async {
    final Database db = await database;
    await db.delete("question", where: "id = ?", whereArgs: [id]);
  }

  // remove an answer
  Future<void> removeAnswer(int id) async {
    final Database db = await database;
    await db.delete("answer", where: "id = ?", whereArgs: [id]);
  }

  // remove a user
  Future<void> removeUser(int id) async {
    final Database db = await database;
    await db.delete("user", where: "id = ?", whereArgs: [id]);
  }

  // remove all questions, users, and answers in case we need this
  Future<void> removeAll() async {
    final Database db = await database;
    final batch = db.batch();
    batch.delete("question");
    batch.delete("user");
    batch.delete("answer");
    batch.delete("tags");
    await batch.commit(noResult: true);
  }

  // add multiple questions
  Future<void> addQuestions(List<QuestionDto> questionDtoList) async {
    final Database db = await database;
    await db.transaction((txn) async {
      final batch = txn.batch();

      for (var e in questionDtoList) {
        batch.insert("question", e.toQuestionEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
        batch.insert("user", e.author.toUserEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
        for (var t in e.tags) {
          Map<String, dynamic> tagMap = {
            "questionId": e.id,
            "tagId": t.id,
            "name": t.name,
          };
          batch.insert("tags", tagMap,
              conflictAlgorithm: ConflictAlgorithm.replace);
        }
      }
      await batch.commit(noResult: true);
    });
  }

  // add multiple answers
  Future<void> addAnswers(List<AnswerDto> answerDtoList) async {
    final Database db = await database;
    await db.transaction((txn) async {
      final batch = txn.batch();

      for (var e in answerDtoList) {
        batch.insert("answer", e.toAnswerEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
        batch.insert("user", e.author.toUserEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      }
      await batch.commit(noResult: true);
    });
  }

  // Update requests
  Future<void> updateAppointment(AppointmentEntity appointmentEntity) async {
    final Database db = await database;
    await db.insert("appointment", appointmentEntity.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
  Future<void> updateComment(CommentEntity commentEntity) async {
    final Database db = await database;
    await db.insert("comment", commentEntity.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
  Future<void> updateNote(NoteEntity noteEntity) async {
    final Database db = await database;
    await db.insert("note", noteEntity.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> updatePost(PostEntity postEntity) async {
    final Database db = await database;
    await db.insert("post", postEntity.toSqlJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> updateProfile(ProfileEntity profileEntity) async {
    final Database db = await database;
    await db.insert("profile", profileEntity.toSqlJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> updateTip(TipEntity tipEntity) async {
    final Database db = await database;
    await db.insert("tip", tipEntity.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // update a user
  // Future<void> updateUser(UserDto userDto) async {
  //   final Database db = await database;
  //   await db.insert("user", userDto.toUserEntity().toJson(),
  //       conflictAlgorithm: ConflictAlgorithm.replace);
  // }
}
