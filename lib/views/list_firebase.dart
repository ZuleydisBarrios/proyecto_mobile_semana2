/* import 'package:flutter/material.dart';
import 'package:flutter_application_2/Entities/registros.dart';
import 'package:flutter_application_2/domain/firebase_connection.dart';
import '../Entities/response_firebase.dart';

class ListFirebase extends StatefulWidget {
  const ListFirebase({Key? key}) : super(key: key);

  @override
  State<ListFirebase> createState() => _ListFirebaseState();
}

class _ListFirebaseState extends State<ListFirebase> {
  final connection = new FirebaseConnection();

  List<Registros> lista_registros = [];

  @override
  Widget build(BuildContext context) {
    callDatabase();
    return Scaffold(       
        body: ListView.builder(
            itemCount: lista_registros.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      Image.network(lista_registros[index].image!).image,
                ),
                title: Text(lista_registros[index].nombre! +
                    " " +
                    lista_registros[index].apellido!),
                onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text((lista_registros[index].nombre! +
                        " "+ lista_registros[index].apellido!).toUpperCase() ),                    
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        
                        CircleAvatar(
                            backgroundImage:
                                Image.network(lista_registros[index].image!)
                                    .image,
                          ),                          

                        Text('\nCelular ${lista_registros[index].cel}'
                            +"\n\n" +lista_registros[index].carro!.toString()
                            +"\n\n" + lista_registros[index].servicio!.toString()
                            ),
                      ],
                    ),
                        
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }

  void callDatabase() async {
    final response = await connection.getRegisters();
    if (lista_registros.length == 0) {
      setState(() {
        lista_registros = response.registros!;  
      });
    }
  }
}
 */