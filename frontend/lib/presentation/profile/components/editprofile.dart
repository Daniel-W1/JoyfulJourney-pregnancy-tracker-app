import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/profile/bloc/profile_bloc.dart';
import 'package:frontend/application/profile/bloc/profile_event.dart';
import 'package:frontend/application/profile/bloc/profile_state.dart';
import 'package:frontend/domain/profile/profile.dart';
import 'package:frontend/presentation/core/constants/assets.dart';
import 'package:frontend/presentation/profile/components/textfield.dart';
import 'package:frontend/presentation/profile/components/profileavatar.dart';
import 'dart:convert';

import '../../../infrastructure/profile/profile_form_dto.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: source);
    if (pickedImage != null) {
      Future.microtask(() {
        setState(() {
          _image = File(pickedImage.path);
        });
      });
    }
  }

  late ProfileBloc profileBloc;

  late String firstName = '';
  late String lastName = '';
  late String imageUrl = '';
  late String bio = '';

  @override
  void initState() {
    super.initState();
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    profileBloc
        .add(ProfileEventGetProfile(profileId: '64773ac7ba6d773eeec4120e'));
  }

  Future<String> convertImageToBase64(File imageFile) async {
    return compute(_encodeImageToBase64, imageFile);
  }

  static String _encodeImageToBase64(File imageFile) {
    List<int> imageBytes = imageFile.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileStateLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ProfileStateSuccess) {
            final profile = state.profile;
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 44),
                  Container(
                    // make this container transparent
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 210,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Assets.assetsImagesFancyBack),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        height: 250,
                        right: MediaQuery.of(context).size.width / 2 - 60,
                        child: ProfileWidget(
                          imagePath: imageUrl != ''
                              ? imageUrl
                              : profile.profilePicture,
                          onClicked: () {
                            _pickImage(ImageSource.gallery);
                          },
                          isEdit: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidget(
                      label: 'Full Name',
                      text: "${profile.firstName} ${profile.lastName}",
                      onChanged: (name) {
                        print('name is $name');
                        final names = name != " "
                            ? name.split(' ')
                            : [profile.firstName, profile.lastName];

                        setState(() {
                          firstName = names[0];
                          lastName = names[1];
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidget(
                      label: 'Password',
                      text: "*********",
                      onChanged: (name) {
                        setState(() {
                          firstName = name != ' ' ? name : profile.firstName;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidget(
                      label: 'About',
                      text: profile.bio,
                      maxLines: 5,
                      onChanged: (about) {
                        setState(() {
                          print('about is $about');
                          bio = about != ' ' ? about : profile.bio;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 226, 89, 89),
                      ),
                      onPressed: () async {
                        if (_image != null) {
                          String base64Image =
                              await convertImageToBase64(_image!);
                          setState(() {
                            imageUrl = base64Image;
                          });
                        }

                        print('$firstName $lastName $bio we are printing');
                        print(
                            '${profile.firstName} ${profile.lastName} ${profile.bio} we are printing');

                        ProfileForm profileForm = ProfileForm(
                          firstName:
                              firstName != '' ? firstName : profile.firstName,
                          lastName:
                              lastName != '' ? lastName : profile.lastName,
                          followers: profile.followers,
                          following: profile.following,
                          profilePicture: imageUrl != ''
                              ? imageUrl
                              : profile.profilePicture,
                          socialMedia: profile.socialMedia,
                          bio: bio != '' ? bio : profile.bio,
                        );

                        print('decode image $imageUrl');
                        print('decode image ${profile.profilePicture}');
                        print(
                            "--------------------------------------------------");
                        profileBloc.add(ProfileEventUpdate(
                            profileId: '64773ac7ba6d773eeec4120e',
                            profileForm: profileForm));

                        Navigator.pop(context);
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            color: Color.fromARGB(255, 226, 89, 89),
                            fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          } else if (state is _EditProfileState) {
            fetchProfile();
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(child: Text('Failed to load profile'));
          }
        },

      ),
    );
  }
}
