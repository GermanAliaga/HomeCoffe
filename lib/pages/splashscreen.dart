import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/iniciosesion.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  String coffeeMachine = "assets/icons/3098737_coffee_machine2.svg";
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Iniciosesion()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset(
        coffeeMachine,
        semanticsLabel: 'Logo',
        width: 160,
      ),
      Text(
        'HomeCoffee',
        style: TextStyle(fontSize: 50),
      )
    ])));
  }
}



/*import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/iniciosesion.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(
        const Duration(seconds: 3),
        {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const Iniciosesion()))
        } as FutureOr Function()?);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  String coffeeMachine = "assets/icons/3098737_coffee_machine2.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(248, 255, 206, 160),
        Color.fromARGB(255, 153, 67, 1),
      ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            coffeeMachine,
            semanticsLabel: 'Logo',
            width: 90,
          )
        ],
      ),
    ));
  }
}*/
