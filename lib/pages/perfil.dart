import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/addcoffees.dart';
import 'package:homecoffe/pages/coffepreparationcard.dart';
import 'package:homecoffe/pages/favcoffees.dart';
import 'package:homecoffe/pages/iniciosesion.dart';
import 'package:homecoffe/pages/person.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Perfil'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200.0,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 4.0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.teal[100 * (index % 9)],
                            child: Text('Grid Item $index'),
                          );
                        },
                        childCount: 20,
                      ),
                    ),
                    SliverFixedExtentList(
                      itemExtent: 50.0,
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.lightBlue[100 * (index % 9)],
                            child: Text('List Item $index'),
                          );
                        },
                      ),
                    ),
                  ],
                ))));
  }

  /*String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";
  String starImg = "assets/icons/216411_star_icon.svg";
  Person JoeDoe = new Person();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              children: [
                SvgPicture.asset(starImg,
                    semanticsLabel: 'calification', width: 40),
                Text(
                  '4.1',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            SvgPicture.asset(personImg,
                semanticsLabel: 'image profile', width: 90),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddCoffees()));
                },
                child: Icon(Icons.add))
          ]),
          Text(
            JoeDoe.nombre,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'Tus preparaciones:',
            style: TextStyle(fontSize: 20),
          ),
        ]),
      )),
    );
  }*/
}
