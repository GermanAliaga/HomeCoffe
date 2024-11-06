import 'package:flutter/material.dart';
import 'package:homecoffe/pages/coffepreparationcard.dart';
import 'package:homecoffe/pages/commentcard.dart';

class Producto extends ChangeNotifier {
  late String ID;
  late String nombre;
  late String clasificacion;
  late Image imagenRef;
  late double precio;
  late String descripcion;
}
