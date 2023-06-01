import 'package:flutter/material.dart';

class CreateTipForm extends StatefulWidget {
  final Function(String, String) onCreate;

  CreateTipForm({Key? key, required this.onCreate, this.mode = 'Create', this.initialBody = '', this.initialTitle = ''}) : super(key: key);

  late String mode;
  late String initialBody;
  late String initialTitle;

  @override
  _CreateTipFormState createState() => _CreateTipFormState();
}

class _CreateTipFormState extends State<CreateTipForm> {
  final _formKey = GlobalKey<FormState>();
  late String _body;
  late String title;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),

      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${widget.mode} Tip',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Form(
                key: _formKey,
                child: Container(
                  // height: 240.0, // Adjust the height as needed
                  
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: widget.initialTitle,
                        decoration: InputDecoration(
                          labelText: 'Title',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a post title.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          title = value!;
                        },
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        initialValue: widget.initialBody,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: 'Body',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a post body.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _body = value!;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog without saving
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        widget.onCreate(_body, title);
                        // Close the dialog after saving
                      }
                    },
                    child: Text('${widget.mode}'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
