import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/myhomepage.dart';

class Registrocuenta extends StatefulWidget {
  const Registrocuenta({super.key, required this.title});

  final String title;

  @override
  State<Registrocuenta> createState() => _RegistrocuentaState();
}

class _RegistrocuentaState extends State<Registrocuenta> {
  String logo = "assets/icons/185112_coffee_espresso_barista_icon.svg";

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                logo,
                semanticsLabel: 'Game app',
                width: 70,
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
                                MyHomePage(title: 'Homecoffee')));
                  },
                  child: const Text('Entrar'))
            ],
          ),
        )));
  }
}
