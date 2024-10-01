import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/addcoffees.dart';
import 'package:homecoffe/pages/coffepreparationcard.dart';
import 'package:homecoffe/pages/favcoffees.dart';
import 'package:homecoffe/pages/iniciosesion.dart';
import 'package:homecoffe/pages/person.dart';
import 'package:homecoffe/pages/personcard.dart';
import 'package:homecoffe/pages/searchbar.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";
  String starImg = "assets/icons/216411_star_icon.svg";
  Person JoeDoe = new Person();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFixedExtentList(
            itemExtent: 300.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child: PersonCard(),
                );
              },
              childCount: 1,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 250.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child: CoffeCard(),
                );
              },
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
