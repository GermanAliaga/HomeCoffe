import 'package:flutter/material.dart';
import 'package:homecoffe/models/comentario.dart';
import 'package:homecoffe/models/receta.dart';
import 'package:homecoffe/pages/coffepreparationcard.dart';
import 'package:homecoffe/pages/commentcard.dart';

class Person {
  late String ID;
  late String nombre = "Joe Doe";
  late String calificacion = "4.6";
  var listaRecetas = <Receta>{};
  var listaComentarios = <Comentario>{};
  var listaFavoritos = <Receta>{};
  late Image imagenPerfil;
  late String correo;
  late String contrasena;
}

void crearReceta() {
  // Info
}

void gustarReceta() {
  // Info
}

void calificarReceta() {
  // Info
}

void calcularCalificacion() {
  // Info
}

void comentar() {
  // Info
}
