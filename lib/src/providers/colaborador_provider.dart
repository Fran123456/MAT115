import 'dart:convert';
import 'package:MAT115/src/models/colaborador_model.dart';
import 'package:http/http.dart' as http;
import 'api/api_provider.dart';

class ColaboradorProvider{

  Future<List<Colaborador>> getColaboradores() async{
    String _url =api.api()+"getColaboradores/"+api.key;
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final colaboradores = new Colaboradores.fromJsonList(decodeData);
     return colaboradores.items;
    //print(unidades.items[0].titulo);
    //return [];
  }

}

final colaboradoresProvider = new ColaboradorProvider();