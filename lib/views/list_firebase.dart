import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ListFirebase extends StatelessWidget {
  const ListFirebase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }

//Crear metodo para obtener los datos de la base de datos
void callDatabase() {
  final reg = FirebaseDatabase.instance.ref();
  final obj = reg.child('/Registros/2345610').get();
  print(obj);

  }

}