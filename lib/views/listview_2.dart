import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {

  const ListView2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.cloud_circle),
            title: Text('Hello 1'),
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