import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/addcoffees.dart';
import 'package:homecoffe/pages/favcoffees.dart';
import 'package:homecoffe/pages/iniciosesion.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  String personImg = "assets/icons/9035990_person_circle_sharp_icon.svg";
  String starImg = "assets/icons/216411_star_icon.svg";

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
          ]),
          Text(
            'Nombre usuario',
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddCoffees()));
              },
              child: Icon(Icons.add))
        ]),
      )),
    );
  }
}
