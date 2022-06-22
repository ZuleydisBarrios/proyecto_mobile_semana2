import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/home_screen.dart';
import 'package:flutter_application_2/views/list_firebase.dart';
import 'package:flutter_application_2/views/listview_1.dart';
import 'package:flutter_application_2/views/profile.dart';
import 'package:flutter_application_2/views/profileZetien.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ListFirebase(),
    MyProfile(),
    ProfileScreen(),
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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Aplication Mobile',
          style: TextStyle(color: Colors.blue),
        ),
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
            backgroundColor: Color.fromARGB(255, 3, 92, 6),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile: Zuly',
            backgroundColor: Color.fromARGB(210, 9, 95, 194),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Profile: Zetien',
            backgroundColor: Color.fromARGB(255, 76, 51, 187),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 251, 255, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}
