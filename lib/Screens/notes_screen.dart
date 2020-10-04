import 'package:everpobre/Scenes/notes_scene.dart';
import 'package:everpobre/domain/notebook.dart';
import 'package:flutter/material.dart';
import 'package:everpobre/domain/note.dart';

final Notebook model = Notebook.testDataBuilder(null);

class NotesListViewScreen extends StatelessWidget {
  final String argument;

  const NotesListViewScreen({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes for $argument')),
      body: NotesListView(model, argument),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF388E3C),
        foregroundColor: Color(0xFFFFC107),
        onPressed: () {
          model.add(Note("Una nueva nota"));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
