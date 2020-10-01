import 'package:everpobre/Scenes/notebooks_scene.dart';
import 'package:everpobre/domain/notebook.dart';
import 'package:everpobre/domain/notebooks.dart';
import 'package:flutter/material.dart';
import 'package:everpobre/domain/note.dart';

final Notebooks model = Notebooks.testDataBuilder();

class NoteBooksListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NoteBooks List')),
      body: NoteBooksListView(model),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFFC107),
        foregroundColor: Color(0xFF388E3C),
        onPressed: () {
          model.add(Notebook("Una nueva nota"));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
