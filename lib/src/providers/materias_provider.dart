import 'dart:convert';
import 'package:MAT115/src/models/materia_model.dart';
import 'package:http/http.dart' as http;
import 'api/api_provider.dart';

class MateriasProvider{

  Future<List<Materia>> getMaterias() async{
    String _url =api.api()+"getMaterias/"+api.key;
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final materias = new Materias.fromJsonList(decodeData);
     return materias.items;
    //print(unidades.items[0].titulo);
    //return [];
  }

}

final materiasProvider = new MateriasProvider();