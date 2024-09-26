import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/bottomnavigationbar.dart';
import 'package:homecoffe/pages/myhomepage.dart';

class Registrocuenta extends StatefulWidget {
  const Registrocuenta({super.key, required this.title});

  final String title;

  @override
  State<Registrocuenta> createState() => _RegistrocuentaState();
}

class _RegistrocuentaState extends State<Registrocuenta> {
  String logo = "assets/icons/3098737_coffee_machine2.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title)),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SvgPicture.asset(
                logo,
                semanticsLabel: 'Game app',
                width: 100,
              ),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresar nombre',
              )),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresar correo electrónico',
              )),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresar contraseña',
              )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BottomNavigationBarExample()));
                  },
                  child: const Text('Registrar'))
            ],
          ),
        )));
  }
}
