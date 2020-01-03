import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:MAT115/src/models/unidades_model.dart';
import 'api/api_provider.dart';

class UnidadesProvider{

  Future<List<Unidad>> getUnidades() async{
    String _url =api.api()+"unidadesByMateria/2/"+api.key;
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final unidades = new Unidades.fromJsonList(decodeData);
     return unidades.items;
    //print(unidades.items[0].titulo);
    //return [];
  }
}

final unidadesProvider = new UnidadesProvider();