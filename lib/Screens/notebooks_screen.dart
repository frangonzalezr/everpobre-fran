import 'package:everpobre/Scenes/notebooks_scene.dart';
import 'package:everpobre/domain/notebook.dart';
import 'package:everpobre/domain/notebooks.dart';
import 'package:flutter/material.dart';

final Notebooks model = Notebooks.testDataBuilder();

class NoteBooksListViewScreen extends StatelessWidget {
  final String country;

  const NoteBooksListViewScreen({Key key, this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NoteBooks for $country')),
      body: NoteBooksListView(model),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFFC107),
        foregroundColor: Color(0xFF388E3C),
        onPressed: () {
          model.add(Notebook("Un nuevo notebook"));
          print("Creamos un nuevo Notebook");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
