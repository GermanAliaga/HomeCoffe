import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homecoffe/pages/bottomnavigationbar.dart';
import 'package:homecoffe/pages/coffepreparationcard.dart';
import 'package:homecoffe/pages/myhomepage.dart';
import 'package:homecoffe/pages/productscard.dart';

class Products extends StatefulWidget {
  const Products({super.key, required this.title});

  final String title;

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos disponibles'),
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
                  child: ProductsCard(),
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
