import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/bottomnavigationbar.dart';
import 'package:homecoffe/pages/myhomepage.dart';

class FavoriteCoffees extends StatefulWidget {
  const FavoriteCoffees({super.key, required this.title});

  final String title;

  @override
  State<FavoriteCoffees> createState() => _FavoriteCoffeesState();
}

class _FavoriteCoffeesState extends State<FavoriteCoffees> {
  String coffeImg = "assets/icons/5404318_coffee_cup_glass_hot_icon.svg";
  String starImg = "assets/icons/216411_star_icon.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title)),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Card(
              elevation: 10,
              color: Color.fromARGB(248, 250, 239, 229),
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Affogato',
                        style: TextStyle(fontSize: 20),
                      ),
                      SvgPicture.asset(
                        starImg,
                        semanticsLabel: 'calification',
                        width: 25,
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        'Este café se prepara de la siguiente manera:\nIngredientes:\n-100 ml de café\n-Helado de vainilla\nPreparación:\n'),
                    SvgPicture.asset(coffeImg,
                        semanticsLabel: 'Coffee image', width: 60)
                  ],
                ),
              ])),
        )));
  }
}
