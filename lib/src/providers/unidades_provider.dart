import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:MAT115/src/models/unidades_model.dart';

class UnidadesProvider{

  String _url ="http://192.168.1.12/subjectResourcesAPI/public/api/unidadesByMateria/1";

  Future<List<Unidad>> getUnidades() async{
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final unidades = new Unidades.fromJsonList(decodeData);
     return unidades.items;
    //print(unidades.items[0].titulo);
    //return [];
  }

}

final unidadesProvider = new UnidadesProvider();