import 'package:flutter/material.dart';
import 'package:homecoffe/pages/coffepreparationcard.dart';
import 'package:homecoffe/pages/personcard.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
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
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cerrar'))
          ],
        ),
      ),
    );
  }
}
