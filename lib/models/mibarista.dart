import 'package:flutter/material.dart';
import 'package:homecoffe/models/receta.dart';

class Barista extends ChangeNotifier {
  late String nombre = "Barista";
  var listaRecetas = <Receta>{};
  var listaFavoritos = <Receta>{};
  late Image imagenPerfil;
}
