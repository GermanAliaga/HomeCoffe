import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        //lol
        );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  String perfilUser = "assets/icons/9035990_person_circle_sharp_icon.svg";

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.normal);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Coffee',
      style: optionStyle,
    ),
    Text(
      'Index 2: Products',
      style: optionStyle,
    ),
    Text(
      'Index 4: Perfil',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(248, 255, 206, 160),
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        elevation: 20,
        unselectedItemColor: Color.fromARGB(248, 33, 33, 33),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Coffee',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee_maker),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 153, 67, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
/*class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _Bottomnavigationbarstate();
}

class _Bottomnavigationbar extends State<Bottomnavigationbar> {
  var _currentPage = 0;
  var _pages = [Text("Página 1"), Text("Página 2"), Text("Página 3")];
  var _colores = [Colors.green[200], Colors.yellow, Colors.blue[200]];
  var _color = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "BottomNavigationBar",
        home: Scaffold(
            backgroundColor: _colores[_color],
            body: Center(child: _pages.elementAt(_currentPage)),
            bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.announcement), title: Text("Avisos")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.cake), title: Text("Cumpleaños")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.cloud), title: Text("Datos")),
                ],
                currentIndex: _currentPage,
                fixedColor: Colors.red,
                onTap: (int inIndex) {
                  setState(() {
                    _currentPage = inIndex;
                    _color = inIndex;
                  });
                })));
  }
}
*/