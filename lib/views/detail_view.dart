import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final registro;
  const DetailView({Key? key, required this.registro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 18, 79, 212),
          elevation: 0.0,
          title: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  print('tap');
                },
                child: Row( children: [
                  
                ]),
              ),
            ],
          ),
        ),
      body: Column(
        children: [
          Text(registro.nombre + " "+ registro.apellido,
              style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(
                    color: Colors.black54,
                  )),                    
                  Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 220,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(registro.image),
                                fit: BoxFit.cover),
                          ),
                          //child: Image.network(bannerList[0]
                          //)//
                        ),
                      ),
                      Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                          children: [
                            Icon(Icons.call, color: Colors.black),
                            Text('  Celular: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.black)),
                            Text(registro.cel.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.black)),
                                    
                            ],                     
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Detalle del Carro',
                            style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Colors.black),
                                   
                            ),
                          ),
                         
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                             
                                Text(registro.carro.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.black)),
                                    Spacer(),

                                Text(registro.servicio.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.black)),
                              ],
                            ),
                          ),
                      
                        ],
                      
                      ),
              ), 
                    ],
                    
                  ),
                  
           ),
        ],
      ),
       
    );
  }
}
