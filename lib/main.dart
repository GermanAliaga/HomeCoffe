import 'package:flutter/material.dart';
import 'package:homecoffe/pages/bottomnavigationbar.dart';
import 'package:homecoffe/pages/iniciosesion.dart';
import 'package:homecoffe/pages/myhomepage.dart';
import 'package:homecoffe/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
