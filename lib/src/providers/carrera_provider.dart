import 'dart:convert';
import 'package:MAT115/src/models/carrera_model.dart';
import 'package:http/http.dart' as http;
import 'api/api_provider.dart';

class CarrerasProvider{

  Future<List<Carrera>> getCarreras() async{
    String _url =api.api()+"getCarreras/"+api.key;
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final carreras = new Carreras.fromJsonList(decodeData);
     return carreras.items;
    //print(unidades.items[0].titulo);
    //return [];
  }

}

final carrerasProvider = new CarrerasProvider();