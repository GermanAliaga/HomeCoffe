import 'package:flutter/material.dart';
import 'package:homecoffe/models/producto.dart';
import 'package:homecoffe/pages/coffepreparationcard.dart';
import 'package:homecoffe/pages/commentcard.dart';
import 'package:homecoffe/pages/comments.dart';

class Receta {
  late String ID;
  late String nombre;
  late String calificacion;
  late String creador;
  late bool estadoFav;
  late String descripcion;
  late String tiempoPrep;
  var listaIngredientes = <Producto>{};
  var listaInstrumentos = <Producto>{};
  var listaComentarios = <Comments>{};
  late Image imagenRef;
}

void calcularCalificacion() {
  // Info
}
