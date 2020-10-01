import 'package:everpobre/domain/notebook.dart';
import 'package:everpobre/text_resources.dart';
import 'package:flutter/material.dart';

import 'Screens/notebooks_screen.dart';
import 'Screens/notes_screen.dart';

final Notebook model = Notebook.testDataBuilder();
void main() {
  runApp(TreeBuilder());
}

class TreeBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF388E3C),
        accentColor: Color(0xFFFFC107),
      ),
      title: TextResources.appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(TextResources.appName),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('NoteBooks List'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, NoteBooksListViewScreen());
        },
      ),
      ListTile(
        title: Text('Notes List'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          _pushScreen(context, NotesListViewScreen());
        },
      ),
    ],
  );
}

void _pushScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute<void>(builder: (context) => screen),
  );
}
