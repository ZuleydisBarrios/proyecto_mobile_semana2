import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/list_firebase.dart';
import 'package:flutter_application_2/views/profile.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle = 
  TextStyle(fontSize: 24, 
  fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    ListFirebase(),
    MyProfile(),
    Text('Index 3: Settings', style: optionStyle),
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
        title: const Text('Aplication Mobile'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 9, 3, 94),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Service',
            backgroundColor: Color.fromARGB(255, 5, 3, 116),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
            backgroundColor: Color.fromARGB(210, 9, 95, 194),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color.fromARGB(255, 205, 49, 6),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 251, 255, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}


