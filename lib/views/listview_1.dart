import 'package:flutter/material.dart';
import 'package:flutter_application_2/Entities/registros.dart';
import 'package:flutter_application_2/domain/firebase_connection.dart';
import 'package:flutter_application_2/views/detail_view.dart';
import 'package:flutter_application_2/views/profile.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  print('tap');
                },
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    'List Contacts',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),

                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color.fromARGB(210, 33, 4, 175),
                    size: 30,
                  ),

                  // Text('View all',
                  // style: Theme.of(context)
                  // .textTheme
                  // .subtitle2!
                  // .copyWith(color: Colors.black45),),
                ]),
              ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: lista_registros.length,
            itemBuilder: (context, index) {
              MainAxisAlignment:
              MainAxisAlignment.start;
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: Container(
                                height: 70,
                                //margin: EdgeInsets.symmetric(vertical: 2),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                      )
                                    ]),

                                child: Column(
                                  children: [
                                    Row(children: [
                                      SizedBox(width: 25),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          backgroundImage: Image.network(
                                                  lista_registros[index].image!)
                                              .image,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                lista_registros[index].nombre! +
                                                    ' ' +
                                                    lista_registros[index]
                                                        .apellido!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1!
                                                    .copyWith(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                            Text(
                                                'Cel: ' +
                                                    lista_registros[index]
                                                        .cel
                                                        .toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(
                                                      color: Colors.black54,
                                                    ))
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      TextButton(
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.black45,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (content) =>
                                                      DetailView(
                                                        registro:
                                                            lista_registros[
                                                                index],
                                                      )));
                                        },
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                  ],
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
