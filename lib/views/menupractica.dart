import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/listview_1.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 1'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text('Hello 1'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ListFirebase()));
              },
            ),
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text('Hello 2'),
            ),
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text('Hello 3'),
            ),
            ListTile(
              leading: Icon(Icons.cloud_circle),
              title: Text('Hello 4'),
            )
          ],
        ));
  }
}
