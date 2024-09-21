import 'package:flutter/material.dart';
import 'package:homecoffe/pages/bottomnavigationbar.dart';
import 'package:homecoffe/pages/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(249, 232, 169, 122)),
        brightness: Brightness.light,
        useMaterial3: true,
        fontFamily: 'Caramel',
      ),
      home: const BottomNavigationBarExample(),
    );
  }
}
