import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/post/post_list/bloc/post_list_bloc.dart';
import '../../../application/post/post_list/bloc/post_list_events.dart';

class CreatePostForm extends StatefulWidget {
  final Function(String) onCreate;
  final String initialBody;
  final String mode;
  final String postId;

  const CreatePostForm({Key? key, required this.onCreate, this.mode = 'Create', this.initialBody = '', this.postId = ''}) : super(key: key);

  @override
  _CreatePostFormState createState() => _CreatePostFormState();
}

class _CreatePostFormState extends State<CreatePostForm> {
  final _formKey = GlobalKey<FormState>();
  late String _body;

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
                '${widget.mode} Post',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Form(
                key: _formKey,
                child: Container(
                  height: 120.0, // Adjust the height as needed
                  child: TextFormField(
                    maxLines: 5,
                    initialValue: widget.initialBody,
                    decoration: InputDecoration(
                      labelText: 'Body',
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
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
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.mode == 'Create' ? Container() :
                  IconButton(
                    icon: Icon(Icons.delete),
                    color: Colors.red,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      BlocProvider.of<PostListBloc>(context)
                      
                          .add(PostListEventDeletePost(widget.postId));
                      Navigator.of(context).pop();
                      
                    },
                  )
                  ,
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
                            widget.onCreate(_body);
                            Navigator.of(context).pop(); // Close the dialog after saving
                          }
                        },
                        child: Text('${widget.mode}'),
                      ),
                    ],
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
