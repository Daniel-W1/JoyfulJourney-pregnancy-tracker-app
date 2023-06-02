import 'package:flutter/material.dart';
import 'package:frontend/presentation/profile/components/textfield.dart';
import 'package:frontend/presentation/profile/components/profileavatar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final String image =
      "https://images.unsplash.com/photo-1585076800246-4562eb6d6f42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=463&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  // give it a background image
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        // random image from picsum
                        'https://picsum.photos/201',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    height: 250,
                    right: MediaQuery.of(context).size.width / 2 - 60,
                    child: ProfileWidget(
                      imagePath: image,
                      onClicked: doSomething,
                      isEdit: true,
                    )),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFieldWidget(
                label: 'Full Name',
                text: "John Doe",
                onChanged: (name) {},
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFieldWidget(
                label: 'Username',
                text: "@dianna",
                onChanged: (name) {},
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFieldWidget(
                label: 'email',
                text: "dianna@gmail.com",
                onChanged: (name) {},
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFieldWidget(
                label: 'password',
                text: "*********",
                onChanged: (name) {},
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFieldWidget(
                label: 'About',
                text: "I am a student and I love to code and play games",
                maxLines: 5,
                onChanged: (about) {},
              ),
            ),
            const SizedBox(height: 24),
            Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  // change the color of the button
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 226, 89, 89),
                  ),
                  onPressed: () {},
                  child: Text("Done",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                )),
            const SizedBox(height: 24),
            Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                    // change the color of the button
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Cancel",
                      // make the color white
                      style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            226,
                            89,
                            89,
                          ),
                          fontSize: 20),
                    ))),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

// create a place holder function

void doSomething() {
  print("do something");
}
