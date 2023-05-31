import 'dart:async';

import 'package:frontend/domain/appointment/appointment_domain.dart';
import 'package:frontend/domain/appointment/local/appointment_entity.dart';
import 'package:frontend/domain/appointment/local/appointment_entity_mapper.dart';
import 'package:frontend/domain/comment/comment_domain.dart';
import 'package:frontend/domain/comment/local/comment_entity.dart';
import 'package:frontend/domain/comment/local/comment_entity_mapper.dart';
import 'package:frontend/domain/note/local/note_entity.dart';
import 'package:frontend/domain/note/local/note_entity_mapper.dart';
import 'package:frontend/domain/note/note_domain.dart';
import 'package:frontend/domain/post/local/post_entity.dart';
import 'package:frontend/domain/post/local/post_entity_mapper.dart';
import 'package:frontend/domain/post/post_domain.dart';
import 'package:frontend/domain/profile/local/profile_entity.dart';
import 'package:frontend/domain/tip/local/tip_entity.dart';
import 'package:frontend/domain/tip/local/tip_entity_mapper.dart';
import 'package:frontend/domain/tip/tip_domain.dart';
import 'package:frontend/infrastructure/appointment/appointment_dto.dart';
import 'package:frontend/infrastructure/appointment/appointment_mapper.dart';
import 'package:frontend/infrastructure/comment/comment_dto.dart';
import 'package:frontend/infrastructure/comment/comment_mapper.dart';
import 'package:frontend/infrastructure/note/note_dto.dart';
import 'package:frontend/infrastructure/note/note_mapper.dart';
import 'package:frontend/infrastructure/post/post_dto.dart';
import 'package:frontend/infrastructure/post/post_mapper.dart';
import 'package:frontend/infrastructure/profile/profile_dto.dart';
import 'package:frontend/infrastructure/profile/profile_mapper.dart';
import 'package:frontend/infrastructure/tip/tip_dto.dart';
import 'package:frontend/infrastructure/tip/tip_mapper.dart';
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

  // Future<List<Question>> getQuestions() async {
  //   final Database db = await database;
  //   final List<Map<String, dynamic>> questionsList = await db.query("question");
  //   List<QuestionEntity> questionEntityList = questionsList.isEmpty
  //       ? []
  //       : questionsList.map((e) => QuestionEntity.fromJson(e)).toList();
  //   List<Question> finalResult = [];
  //   for (QuestionEntity questionEntity in questionEntityList) {
  //     final user = await getUser(questionEntity.authorId);
  //     var tags = await db.query("tags",
  //         where: "questionId = ?", whereArgs: [questionEntity.id]);
  //     List<TagDto> tempTag = [];
  //     for (var t in tags) {
  //       tempTag.add(TagDto.fromJson(t));
  //     }
  //     finalResult.add(questionEntity.toQuestion(user.toUser(), tempTag));
  //   }
  //   return finalResult;
  // }

  // get all requests
  Future<List<PostDomain>> getPosts() async {
    final Database db = await database;
    final List<Map<String, dynamic>> postsList = await db.query("posts");
    List<PostEntity> postEntityList = postsList.isEmpty
        ? []
        : postsList.map((post) => PostEntity.fromSqlJson(post)).toList();

    List<PostDomain> postDomainList = postEntityList.isEmpty
        ? []
        : postEntityList.map((post) => post.toPostDomain()).toList();
    
    return postDomainList;
  }

  Future<List<AppointmentDomain>> getAppointmentsByUser(String author) async {
    final Database db = await database;
    final List<Map<String, dynamic>> appointmentList = await db
        .query("appointment", where: "author = ?", whereArgs: [author]);
    List<AppointmentEntity> appointmentEntityList = appointmentList.isEmpty
        ? []
        : appointmentList.map((appointment) => AppointmentEntity.fromJson(appointment)).toList();

    List<AppointmentDomain> appointmentDomainList = appointmentEntityList.isEmpty
        ? []
        : appointmentEntityList.map((appointment) => appointment.toAppointmentDomain()).toList();
    
    return appointmentDomainList;
  }

  Future<List<CommentDomain>> getCommentsByUser(String author) async {
    final Database db = await database;
    final List<Map<String, dynamic>> commentList = await db
        .query("comment", where: "author = ?", whereArgs: [author]);
    List<CommentEntity> commentEntityList = commentList.isEmpty
        ? []
        : commentList.map((comment) => CommentEntity.fromJson(comment)).toList();

    List<CommentDomain> commentDomainList = commentEntityList.isEmpty
        ? []
        : commentEntityList.map((comment) => comment.toCommentDomain()).toList();
    
    return commentDomainList;
}

  Future<List<CommentDomain>> getCommentsByPost(String postId) async {
    final Database db = await database;
    final List<Map<String, dynamic>> commentList = await db
        .query("comment", where: "postId = ?", whereArgs: [postId]);
    List<CommentEntity> commentEntityList = commentList.isEmpty
        ? []
        : commentList.map((comment) => CommentEntity.fromJson(comment)).toList();

    List<CommentDomain> commentDomainList = commentEntityList.isEmpty
        ? []
        : commentEntityList.map((comment) => comment.toCommentDomain()).toList();
    
    return commentDomainList;
}

Future<List<NoteDomain>> getNotesByUser(String author) async {
    final Database db = await database;
    final List<Map<String, dynamic>> noteList = await db
        .query("note", where: "author = ?", whereArgs: [author]);
    List<NoteEntity> noteEntityList = noteList.isEmpty
        ? []
        : noteList.map((note) => NoteEntity.fromJson(note)).toList();

    List<NoteDomain> noteDomainList = noteEntityList.isEmpty
        ? []
        : noteEntityList.map((note) => note.toNoteDomain()).toList();
    
    return noteDomainList;
}

Future<List<PostDomain>> getPostsByUser(String author) async {
    final Database db = await database;
    final List<Map<String, dynamic>> postList = await db
        .query("post", where: "author = ?", whereArgs: [author]);
    List<PostEntity> postEntityList = postList.isEmpty
        ? []
        : postList.map((post) => PostEntity.fromJson(post)).toList();

    List<PostDomain> postDomainList = postEntityList.isEmpty
        ? []
        : postEntityList.map((post) => post.toPostDomain()).toList();
    
    return postDomainList;
}



  // Future<List<Question>> getQuestionsByAuthorId(int authorId) async {
  //   final Database db = await database;
  //   final List<Map<String, dynamic>> questionsList = await db
  //       .query("question", where: "authorId = ?", whereArgs: [authorId]);
  //   List<QuestionEntity> questionEntityList = questionsList.isEmpty
  //       ? []
  //       : questionsList.map((e) => QuestionEntity.fromJson(e)).toList();
  //   List<Question> finalResult = [];
  //   for (QuestionEntity questionEntity in questionEntityList) {
  //     final user = await getUser(questionEntity.authorId);
  //     var tags = await db.query("tags",
  //         where: "questionId = ?", whereArgs: [questionEntity.id]);
  //     List<TagDto> tempTag = [];
  //     for (var t in tags) {
  //       tempTag.add(TagDto.fromJson(t));
  //     }
  //     finalResult.add(questionEntity.toQuestion(user.toUser(), tempTag));
  //   }
  //   return finalResult;
  // }


  // get a single question
  // Future<Question> getQuestion(int id) async {
  //   final Database db = await database;
  //   final List<Map<String, dynamic>> questionsList =
  //       await db.query("question", where: "id = ?", whereArgs: [id]);
  //   QuestionEntity questionEntity =
  //       QuestionEntity.fromJson(questionsList.first);
  //   final user = await getUser(questionEntity.authorId);
  //   var tags = await db
  //       .query("tags", where: "questionId = ?", whereArgs: [questionEntity.id]);
  //   List<TagDto> tempTag = [];
  //   for (var t in tags) {
  //     tempTag.add(TagDto.fromJson(t));
  //   }
  //   return questionEntity.toQuestion(user.toUser(), tempTag);
  // }

  // // get answers to a question
  // Future<List<AnswerEntity>> getAnswers(int questionId) async {
  //   final Database db = await database;
  //   final List<Map<String, dynamic>> answersList = await db
  //       .query("answer", where: "questionId = ?", whereArgs: [questionId]);
  //   List<AnswerEntity> answerEntityList = answersList.isEmpty
  //       ? []
  //       : answersList.map((e) => AnswerEntity.fromJson(e)).toList();
  //   return answerEntityList;
  // }

  // // get a single answer
  // Future<AnswerEntity> getAnswer(int answerId) async {
  //   final Database db = await database;
  //   final List<Map<String, dynamic>> answersList =
  //       await db.query("answer", where: "id = ?", whereArgs: [answerId]);
  //   AnswerEntity answerEntity = AnswerEntity.fromJson(answersList.first);
  //   return answerEntity;
  // }

  // // Profile
  // Future<Profile> getProfile(int id) async {
  //   final Database db = await database;
  //   final List<Map<String, dynamic>> profileList =
  //       await db.query("profile", where: "id = ?", whereArgs: [id]);
  //   ProfileEntity profileEntity = ProfileEntity.fromJson(profileList.first);
  //   return profileEntity.toProfile();
  // }


  // // get a single user
  // Future<UserEntity> getUser(int id) async {
  //   final Database db = await database;
  //   final List<Map<String, dynamic>> usersList =
  //       await db.query("user", where: "id = ?", whereArgs: [id]);
  //   UserEntity userModel = UserEntity.fromJson(usersList.first);
  //   return userModel;
  // }

  // Future<void> removeQuestion(int id) async {
  //   final Database db = await database;
  //   await db.delete("question", where: "id = ?", whereArgs: [id]);
  // }

  // Future<void> removeAnswer(int id) async {
  //   final Database db = await database;
  //   await db.delete("answer", where: "id = ?", whereArgs: [id]);
  // }

  // remove requests
  Future<void> removeAppointment(String id) async {
    final Database db = await database;
    await db.delete("appointment", where: "id = ?", whereArgs: [id]);
  }

  Future<void> removeComment(String id) async {
    final Database db = await database;
    await db.delete("comment", where: "id = ?", whereArgs: [id]);
  }

  Future<void> removeNote(String id) async {
    final Database db = await database;
    await db.delete("note", where: "id = ?", whereArgs: [id]);
  }

  Future<void> removePost(String id) async {
    final Database db = await database;
    await db.delete("post", where: "id = ?", whereArgs: [id]);
  }

  Future<void> removeProfile(String id) async {
    final Database db = await database;
    await db.delete("profile", where: "id = ?", whereArgs: [id]);
  }

  Future<void> removeTip(String id) async {
    final Database db = await database;
    await db.delete("tip", where: "id = ?", whereArgs: [id]);
  }

  Future<void> removeAll() async {
    final Database db = await database;
    final batch = db.batch();
    batch.delete("appointment");
    batch.delete("comment");
    batch.delete("note");
    batch.delete("post");
    batch.delete("profile");
    batch.delete("tip");
    await batch.commit(noResult: true);
  }

  // Future<void> addQuestions(List<QuestionDto> questionDtoList) async {
  //   final Database db = await database;
  //   await db.transaction((txn) async {
  //     final batch = txn.batch();

  //     for (var e in questionDtoList) {
  //       batch.insert("question", e.toQuestionEntity().toJson(),
  //           conflictAlgorithm: ConflictAlgorithm.replace);
  //       batch.insert("user", e.author.toUserEntity().toJson(),
  //           conflictAlgorithm: ConflictAlgorithm.replace);
  //       for (var t in e.tags) {
  //         Map<String, dynamic> tagMap = {
  //           "questionId": e.id,
  //           "tagId": t.id,
  //           "name": t.name,
  //         };
  //         batch.insert("tags", tagMap,
  //             conflictAlgorithm: ConflictAlgorithm.replace);
  //       }
  //     }
  //     await batch.commit(noResult: true);
  //   });
  // }

  // Future<void> addAnswers(List<AnswerDto> answerDtoList) async {
  //   final Database db = await database;
  //   await db.transaction((txn) async {
  //     final batch = txn.batch();

  //     for (var e in answerDtoList) {
  //       batch.insert("answer", e.toAnswerEntity().toJson(),
  //           conflictAlgorithm: ConflictAlgorithm.replace);
  //       batch.insert("user", e.author.toUserEntity().toJson(),
  //           conflictAlgorithm: ConflictAlgorithm.replace);
  //     }
  //     await batch.commit(noResult: true);
  //   });
  // }

  // add requests
  Future<void> addAppointments(List<AppointmentDto> appointmentDtoList) async {
    final Database db = await database;
    await db.transaction((transac) async {
      final batch = transac.batch();

      for (AppointmentDto appointmentDto in appointmentDtoList) {
        batch.insert("appointment", appointmentDto.toAppointmentEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      }
      await batch.commit(noResult: true);
    });
  }

  Future<void> addComments(List<CommentDto> commentDtoList) async {
    final Database db = await database;
    await db.transaction((transac) async {
      final batch = transac.batch();

      for (CommentDto commentDto in commentDtoList) {
        batch.insert("comment", commentDto.toCommentEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      }
      await batch.commit(noResult: true);
    });
  }

  Future<void> addNotes(List<NoteDto> noteDtoList) async {
    final Database db = await database;
    await db.transaction((transac) async {
      final batch = transac.batch();

      for (NoteDto noteDto in noteDtoList) {
        batch.insert("note", noteDto.toNoteEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      }
      await batch.commit(noResult: true);
    });
  }

  Future<void> addPosts(List<PostDto> postDtoList) async {
    final Database db = await database;
    await db.transaction((transac) async {
      final batch = transac.batch();

      for (PostDto postDto in postDtoList) {
        batch.insert("post", postDto.toPostEntity().toSqlJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      }
      await batch.commit(noResult: true);
    });
  }

  Future<void> addProfiles(List<ProfileDto> profileDtoList) async {
    final Database db = await database;
    await db.transaction((transac) async {
      final batch = transac.batch();

      for (ProfileDto profileDto in profileDtoList) {
        batch.insert("profile", profileDto.toProfileEntity().toSqlJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      }
      await batch.commit(noResult: true);
    });
  }


  Future<void> addTips(List<TipDto> tipDtoList) async {
    final Database db = await database;
    await db.transaction((transac) async {
      final batch = transac.batch();

      for (TipDto tipDto in tipDtoList) {
        batch.insert("tip", tipDto.toTipEntity().toJson(),
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

  // // update a profile
  // Future<void> putProfile(ProfileEntity profileDto) async {
  //   final Database db = await database;
  //   await db.insert("user", profileDto.toJson(),
  //       conflictAlgorithm: ConflictAlgorithm.replace);
  // }

}
