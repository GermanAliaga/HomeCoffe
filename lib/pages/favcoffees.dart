import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/bottomnavigationbar.dart';
import 'package:homecoffe/pages/coffepreparationcard.dart';
import 'package:homecoffe/pages/myhomepage.dart';

class FavoriteCoffees extends StatefulWidget {
  const FavoriteCoffees({super.key, required this.title});

  final String title;

  @override
  State<FavoriteCoffees> createState() => _FavoriteCoffeesState();
}

class _FavoriteCoffeesState extends State<FavoriteCoffees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title)),
        body: const Center(
            child: const Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: 400,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [],
            ),
          ),
        )));
  }
}
