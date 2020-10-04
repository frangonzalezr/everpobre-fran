import 'package:everpobre/domain/note.dart';
import 'package:everpobre/text_resources.dart';
import 'package:flutter/material.dart';

class Notebook with ChangeNotifier {
  static final shared = Notebook();

  static String selectedCountry = "";

  final List<Note> _notes = [];

  List<String> _cities = TextResources.Albania;

  int get length => _notes.length;

  // Constructores
  Notebook([String s]);

  Notebook.testDataBuilder(String argument) {
    if (selectedCountry == "Albania") {
      _cities = TextResources.Albania;
    } else if (selectedCountry == "Andorra") {
      _cities = TextResources.Andorra;
    } else if (selectedCountry == "Austria") {
      _cities = TextResources.Austria;
    } else if (selectedCountry == "Belarus") {
      _cities = TextResources.Belarus;
    } else if (selectedCountry == "Belgium") {
      _cities = TextResources.Belgium;
    } else if (selectedCountry == "Bosnia and Herzegovina") {
      _cities = TextResources.BosniaandHerzegovina;
    } else if (selectedCountry == "Bulgaria") {
      _cities = TextResources.Bulgaria;
    } else if (selectedCountry == "Croatia") {
      _cities = TextResources.Croatia;
    } else if (selectedCountry == "Cyprus") {
      _cities = TextResources.Cyprus;
    } else if (selectedCountry == "Czech Republic") {
      _cities = TextResources.CzechRepublic;
    } else if (selectedCountry == "Denmark") {
      _cities = TextResources.Denmark;
    } else if (selectedCountry == "Estonia") {
      _cities = TextResources.Estonia;
    } else if (selectedCountry == "Finland") {
      _cities = TextResources.Finland;
    } else if (selectedCountry == "France") {
      _cities = TextResources.France;
    } else if (selectedCountry == "Germany") {
      _cities = TextResources.Germany;
    } else if (selectedCountry == "Greece") {
      _cities = TextResources.Greece;
    } else if (selectedCountry == "Hungary") {
      _cities = TextResources.Hungary;
    } else if (selectedCountry == "Iceland") {
      _cities = TextResources.Iceland;
    } else if (selectedCountry == "Ireland") {
      _cities = TextResources.Ireland;
    } else if (selectedCountry == "Italy") {
      _cities = TextResources.Italy;
    } else if (selectedCountry == "Kosovo") {
      _cities = TextResources.RepublicKosovo;
    } else if (selectedCountry == "Latvia") {
      _cities = TextResources.Latvia;
    } else if (selectedCountry == "Liechtenstein") {
      _cities = TextResources.Liechtenstein;
    } else if (selectedCountry == "Lithuania") {
      _cities = TextResources.Lithuania;
    } else if (selectedCountry == "Luxembourg") {
      _cities = TextResources.Luxembourg;
    } else if (selectedCountry == "Macedonia") {
      _cities = TextResources.Macedonia;
    } else if (selectedCountry == "Malta") {
      _cities = TextResources.Malta;
    } else if (selectedCountry == "Moldova") {
      _cities = TextResources.Moldova;
    } else if (selectedCountry == "Monaco") {
      _cities = TextResources.Monaco;
    } else if (selectedCountry == "Montenegro") {
      _cities = TextResources.Montenegro;
    } else if (selectedCountry == "Netherlands") {
      _cities = TextResources.Netherlands;
    } else if (selectedCountry == "Norway") {
      _cities = TextResources.Norway;
    } else if (selectedCountry == "Poland") {
      _cities = TextResources.Poland;
    } else if (selectedCountry == "Portugal") {
      _cities = TextResources.Portugal;
    } else if (selectedCountry == "Romania") {
      _cities = TextResources.Romania;
    } else if (selectedCountry == "Russia") {
      _cities = TextResources.Russia;
    } else if (selectedCountry == "San Marino") {
      _cities = TextResources.SanMarino;
    } else if (selectedCountry == "Serbia") {
      _cities = TextResources.Serbia;
    } else if (selectedCountry == "Slovakia") {
      _cities = TextResources.Slovakia;
    } else if (selectedCountry == "Slovenia") {
      _cities = TextResources.Slovenia;
    } else if (selectedCountry == "Spain") {
      _cities = TextResources.Spain;
    } else if (selectedCountry == "Sweden") {
      _cities = TextResources.Sweden;
    } else if (selectedCountry == "Switzerland") {
      _cities = TextResources.Switzerland;
    } else if (selectedCountry == "Ukraine") {
      _cities = TextResources.Ukraine;
    } else if (selectedCountry == "United Kingdom") {
      _cities = TextResources.UnitedKingdom;
    } else if (selectedCountry == "Vatican City") {
      _cities = TextResources.VaticanCity;
    }
    _notes
        .addAll(List.generate(_cities.length, (index) => Note(_cities[index])));
  }

  // Accesores
  Note operator [](int index) {
    return _notes[index];
  }

  // Mutadores
  bool remove(Note note) {
    final n = _notes.remove(note);
    notifyListeners();
    return n;
  }

  Note removeAt(int index) {
    final Note n = _notes.removeAt(index);
    notifyListeners();
    return n;
  }

  void add(Note note) {
    _notes.insert(0, note);
    notifyListeners();
  }

  // Object Protocol
  @override
  String toString() {
    return "<$runtimeType: $length notes>";
  }
}
