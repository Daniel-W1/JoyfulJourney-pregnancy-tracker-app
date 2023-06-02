import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:frontend/presentation/core/constants/assets.dart';

class ProfileWidget extends StatefulWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
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
  void initState() {
    super.initState();
    decodeImage(widget.imagePath);
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.pink,
            width: 4.0,
          ),
        ),
        child: Stack(
          children: [
            buildImage(),
            Positioned(
              bottom: 0,
              right: 4,
              child: buildEditIcon(color),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage() {
    final image = _decodedImage;
    print(image);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image != null
              ? MemoryImage(image)
              : AssetImage(Assets.assetsImagesWomanProfile) as ImageProvider,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(onTap: widget.onClicked),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            widget.isEdit ? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
