import 'package:everpobre/Screens/notes_screen.dart';
import 'package:everpobre/domain/notebook.dart';
import 'package:everpobre/domain/notebooks.dart';
import 'package:flutter/material.dart';

class NoteBooksListView extends StatefulWidget {
  final Notebooks _model;

  const NoteBooksListView(Notebooks model) : _model = model;

  @override
  _NoteBooksListViewState createState() => _NoteBooksListViewState();
}

class _NoteBooksListViewState extends State<NoteBooksListView> {
  void modelDidChange() {
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    widget._model.addListener(modelDidChange);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    widget._model.removeListener(modelDidChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget._model.length,
      itemBuilder: (context, index) {
        return NoteBookSliver(widget._model, index);
      },
    );
  }
}

class NoteBookSliver extends StatefulWidget {
  final Notebooks notebooks;
  final int index;

  const NoteBookSliver(Notebooks notebooks, int index)
      : this.notebooks = notebooks,
        this.index = index;

  @override
  _NoteBookSliverState createState() => _NoteBookSliverState();
}

class _NoteBookSliverState extends State<NoteBookSliver> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        widget.notebooks.removeAt(widget.index);

        Scaffold.of(context).showSnackBar(
          const SnackBar(
            content: Text("Note has been deleted!"),
          ),
        );
        setState(() {});
      },
      background: Container(
        color: Colors.red,
      ),
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.map),
          title: Text(widget.notebooks.europeanCountries[widget.index]),
          onTap: () {
            //Navigator.pushNamed(
            //  context,
            //  NotesListView.routeName,
            //  arguments: widget.notebooks.europeanCountries[widget.index],
            //);
            Notebook.selectedCountry =
                widget.notebooks.europeanCountries[widget.index];

            Navigator.push<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                  builder: (context) => NotesListViewScreen(
                        argument:
                            widget.notebooks.europeanCountries[widget.index],
                      )),
            );

            print(
                "Pasamos " + widget.notebooks.europeanCountries[widget.index]);
          },
        ),
      ),
    );
  }
}
