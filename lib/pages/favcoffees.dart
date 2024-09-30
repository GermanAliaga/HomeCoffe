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
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preparaciones favoritas'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: CustomScrollView(
        center: centerKey,
        slivers: <Widget>[
          SliverList(
            key: centerKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  height: 300 + bottom[index] % 4 * 20.0,
                  child: CoffeCard(),
                );
              },
              childCount: bottom.length,
            ),
          ),
        ],
      ),
    );
  }
}
