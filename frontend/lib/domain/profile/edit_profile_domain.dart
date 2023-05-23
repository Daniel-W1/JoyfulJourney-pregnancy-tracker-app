import 'dart:io';

class EditProfileForm {
  final String firstName;
  final String lastName;
  final String bio;
  final File? profilePicture;

  EditProfileForm({
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.profilePicture,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'bio': bio,
    };
  }
}
