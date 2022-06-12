import 'package:flutter_application_2/Entities/carro.dart';
import 'package:flutter_application_2/Entities/registros.dart';
import 'package:flutter_application_2/Entities/servicios.dart';

class ResponseFirebase{

  List<Registros>? registros;


  ResponseFirebase({this.registros});

 /*  ResponseFirebase.fromJson(Map<String, dynamic> json) {

    if (json['registros'] != null) {

      registros = <Registros>[];
      json['Registros'].forEach((v) {
        registros!.add(Registros.fromJson(v));
      });
    }
  } */

  ResponseFirebase.fromJson(List<dynamic> json){
    //print(json);
    // final map = Map<String, dynamic>.from(json as Map);
    // final servicios = ResponseFirebase.fromJson(map.values.toList());
    
    registros = json.map((e) => Registros.fromJson(Map<String, dynamic>.from(e as Map))).toList();
    
  }
}


