import 'package:flutter/material.dart';
import 'package:homecoffe/models/comentario.dart';
import 'package:homecoffe/models/mibarista.dart';
import 'package:homecoffe/models/person.dart';
import 'package:homecoffe/models/producto.dart';
import 'package:homecoffe/models/receta.dart';
import 'package:homecoffe/models/sistema.dart';
import 'package:homecoffe/pages/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Sistema()),
          ChangeNotifierProvider(create: (_) => Comentario()),
          ChangeNotifierProvider(create: (_) => Person()),
          ChangeNotifierProvider(create: (_) => Producto()),
          ChangeNotifierProvider(create: (_) => Receta()),
          ChangeNotifierProvider(create: (_) => Barista()),
        ],
        child: MaterialApp(
          title: 'HomeCoffee',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(249, 232, 169, 122)),
            brightness: Brightness.light,
            useMaterial3: true,
            fontFamily: 'Caramel',
          ),
          debugShowCheckedModeBanner: false,
          home: const Splashscreen(),
        ));
  }
}
