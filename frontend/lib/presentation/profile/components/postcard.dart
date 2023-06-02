import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
                  // Customize the avatar based on your requirements
                  // create a background image
                  backgroundImage: NetworkImage(imageUrl),
                  radius: 20,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      author,
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
                  description,
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
                      likeCount.toString(),
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.comment, color: Colors.blue),
                    SizedBox(width: 5),
                    Text(
                      commentCount.toString(),
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
  }
}
