import 'package:everpobre/domain/notebook.dart';
import 'package:flutter/material.dart';

// Crea una clase `Notebooks` en el dominio. Representa una lista de `Notebook`.
// Añádele un constructor que carga datos de pruebas: varios `Notebooks` que contienen a varias `Notes`.

class Notebooks with ChangeNotifier {
  static final shared = Notebooks();

  final List<Notebook> _notebook = [];

// Load european countries as Notebooks
  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Georgia',
    'Germany',
    'Greece',
    'Hungary',
    'Iceland',
    'Ireland',
    'Italy',
    'Kazakhstan',
    'Kosovo',
    'Latvia',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macedonia',
    'Malta',
    'Moldova',
    'Monaco',
    'Montenegro',
    'Netherlands',
    'Norway',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'San Marino',
    'Serbia',
    'Slovakia',
    'Slovenia',
    'Spain',
    'Sweden',
    'Switzerland',
    'Turkey',
    'Ukraine',
    'United Kingdom',
    'Vatican City'
  ];

  int get length => _notebook.length;

  // Constructores
  Notebooks();

  Notebooks.testDataBuilder() {
    _notebook.addAll(List.generate(europeanCountries.length,
        (index) => Notebook("Notebook for $europeanCountries[index]")));
  }

  // Accesores
  Notebook operator [](int index) {
    return _notebook[index];
  }

  // Mutadores
  bool remove(Notebook notebook) {
    final n = _notebook.remove(notebook);
    notifyListeners();
    return n;
  }

  Notebook removeAt(int index) {
    final Notebook n = _notebook.removeAt(index);
    notifyListeners();
    return n;
  }

  void add(Notebook notebook) {
    _notebook.insert(0, notebook);
    notifyListeners();
  }

  // Object Protocol
  @override
  String toString() {
    return "<$runtimeType: $length notebook>";
  }
}
