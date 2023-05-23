class NoteAPI {
  CustomHttpClient _customHttpClient = CustomHttpClient();

  Future<> createAnswer(AnswerFormDto answerFormDto) async {
    var answer = await _customHttpClient.post("answers",
        body: json.encode(answerFormDto.toJson()));

    if (answer.statusCode == 201) {
      return AnswerDto.fromJson(jsonDecode(answer.body));
    } else {
      throw Exception("Failed to create answer"); //TODO: handle the exceptions
    }
  }

  // Future<Note> createNote({
  //   required String title,
  //   required String content,
  // }) async {
  //   final response = await _customHttpClient.post(
  //     '/notes',
  //     body: jsonEncode({
  //       'title': title,
  //       'content': content,
  //     }),
  //   );

  //   if (response.statusCode == 201) {
  //     return Note.fromJson(jsonDecode(response.body));
  //   } else {
  //     throw Exception('Failed to create note');
  //   }
  // }



}
