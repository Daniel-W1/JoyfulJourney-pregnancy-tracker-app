import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/bloc/profile_bloc.dart';
import '../../../application/profile/bloc/profile_state.dart';
import '../../core/constants/assets.dart';

class PostCard extends StatefulWidget {
  final String author;
  final String description;
  final int likeCount;
  final int commentCount;
  final String imageUrl;

  const PostCard({
    Key? key,
    required this.author,
    required this.description,
    required this.likeCount,
    required this.commentCount,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  Uint8List? _decodedImage;

  Future<void> decodeImage(String base64Image) async {
    try {
      Uint8List bytes = base64Decode(base64Image);
      setState(() {
        _decodedImage = bytes;
      });
    } catch (e) {
      print('cant decode');
    }
  }

  @override
  Widget build(BuildContext context) {
    // final profileBloc = BlocProvider.of<ProfileBloc>(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is ProfileStateSuccess) {
          final profile = state.profile;
          final profileImage = profile.profilePicture;

          // Decode the profile image
          decodeImage(profileImage);
        }

        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: _decodedImage != null
                          ? MemoryImage(_decodedImage!)
                          : AssetImage(Assets.assetsImagesWomanProfile)
                              as ImageProvider<Object>,
                      radius: 25,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.author,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.thumb_up, color: Colors.blue),
                        SizedBox(width: 5),
                        Text(
                          widget.likeCount.toString(),
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.comment, color: Colors.blue),
                        SizedBox(width: 5),
                        Text(
                          widget.commentCount.toString(),
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
