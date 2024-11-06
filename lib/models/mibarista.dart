import 'package:flutter/material.dart';
import 'package:homecoffe/models/comentario.dart';
import 'package:homecoffe/models/receta.dart';

class Person extends ChangeNotifier {
  late String nombre = "Barista";
  var listaRecetas = <Receta>{};
  var listaFavoritos = <Receta>{};
  late Image imagenPerfil;
}
