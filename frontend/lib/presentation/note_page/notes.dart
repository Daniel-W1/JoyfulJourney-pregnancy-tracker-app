import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/note/bloc/note_event.dart';
import 'package:frontend/application/note/bloc/note_state.dart';
import 'package:flutter/material.dart';
import 'package:frontend/application/note/bloc/note_bloc.dart';
import 'package:frontend/presentation/note_page/symptomcard.dart';

/*
  here is the widget tree

  Column
    Container

    Container
      Search bar
    
    Container
      Listview
        ListItems(Notes)
  
  Add Note button, that is not scrollable
  Bottom navigation bar

 */

// create a list notes card widget
// that has title, description, date

class NotesPage extends StatefulWidget {
  

  const NotesPage({Key? key}) : super(key: key);
// , required this.noteBloc
  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  var notes = [];
  late  NoteBloc noteBloc;


  @override
  void initState() {
    super.initState();
    noteBloc = BlocProvider.of<NoteBloc>(context);
    fetchNotes('6474824cebecd37a7abd4cb3');
  }

  Future<void> fetchNotes(String userId) async {
  noteBloc.add(NoteEventGetByUser(userId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(
      builder: (context, state) {
        if (state is NoteStateInitial) {
          return CircularProgressIndicator();
        } else if (state is NoteStateSuccessMultiple) {
          notes = state.notes;

          return Scaffold(
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 50,
                          bottom: 10,
                        ),
                        child: const Text(
                          "Notes",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: 'Search',
                          ),
                        ),
                      ),
                      Container(
                        height: 850,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 3.0),
                          itemCount: notes.length,
                          itemBuilder: (context, index) {
                            final note = notes[index];
                            return SymptomCard(
                              title: note.title,
                              description: note.body,
                              date: note.author,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        size: 40,
                      ),
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (state is NoteStateFailure) {
          return Center(
              child: Text('Failed to load notes: ${state.failure.toString()}'));
        }

        return Scaffold(
          body: Text("Failed to load notes."),
        );
      },
    );
  }
}
