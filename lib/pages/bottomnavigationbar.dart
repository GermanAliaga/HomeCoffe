import 'package:flutter/material.dart';
import 'package:homecoffe/pages/favcoffees.dart';
import 'package:homecoffe/pages/perfil.dart';

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
      'Index 1: MyFavCoffee',
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
      if (_selectedIndex == 0) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    FavoriteCoffees(title: 'Cafés favoritos')));
      } else if (_selectedIndex == 1) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    FavoriteCoffees(title: 'Cafés favoritos')));
      } else if (_selectedIndex == 2) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    FavoriteCoffees(title: 'Cafés favoritos')));
      } else if (_selectedIndex == 3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Perfil()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
            label: 'MyFavCoffee',
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
