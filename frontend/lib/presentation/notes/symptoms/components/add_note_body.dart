import 'package:flutter/material.dart';
import '../../../core/constants/assets.dart';
import 'add_note_app_bar.dart';
import 'book_textfield_button.dart';

class AddNoteBody extends StatelessWidget {
  const AddNoteBody({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              Assets.assetsImagesEllipse51,
              scale: 2,
            ),
          ),
          Body(),
        ],
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // give selectedDate default current date and selectedTime default current time

  @override
  Widget build(BuildContext context) {
    // Initialize dependencies

    return SingleChildScrollView(
      child: Column(
        children: [
          AddNoteAppBar(),
          BookTextFieldButton(),
        ],
      ),
    );
  }
}
