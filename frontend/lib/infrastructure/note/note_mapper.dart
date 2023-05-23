
extension NoteMapper on NoteDto{
  Note toNote(){
    return Note(
      body: body,
      title: title,
      userId: user_id,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}