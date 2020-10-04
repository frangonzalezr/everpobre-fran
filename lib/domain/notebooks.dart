import 'package:everpobre/domain/notebook.dart';
import 'package:flutter/material.dart';
import 'package:everpobre/text_resources.dart';

// Crea una clase `Notebooks` en el dominio. Representa una lista de `Notebook`.
// Añádele un constructor que carga datos de pruebas: varios `Notebooks` que contienen a varias `Notes`.

class Notebooks with ChangeNotifier {
  static final shared = Notebooks();

  final List<Notebook> _notebooks = [];

// Load european countries as Notebooks

  final europeanCountries = TextResources.europeanCountries;

  int get length => _notebooks.length;

  // Constructores
  Notebooks();

  Notebooks.testDataBuilder() {
    _notebooks.addAll(List.generate(europeanCountries.length,
        (index) => Notebook("Notebook for $europeanCountries[index]")));
  }

  // Accesores
  Notebook operator [](int index) {
    return _notebooks[index];
  }

  // Mutadores
  bool remove(Notebook notebook) {
    final n = _notebooks.remove(notebook);
    notifyListeners();
    return n;
  }

  Notebook removeAt(int index) {
    final Notebook n = _notebooks.removeAt(index);
    notifyListeners();
    return n;
  }

  void add(Notebook notebook) {
    _notebooks.insert(0, notebook);
    notifyListeners();
  }

  // Object Protocol
  @override
  String toString() {
    return "<$runtimeType: $length notebook>";
  }
}
