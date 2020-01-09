import 'dart:convert';
import 'package:MAT115/src/models/contenido_model.dart';
import 'package:http/http.dart' as http;
import 'api/api_provider.dart';

class ContenidoProvider{


  Future<List<Contenido>> getContenidos(int id) async{
     String _url = api.api()  + "contenidos/" + id.toString()+"/"+api.key;
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final contenidos = new Contenidos.fromJsonList(decodeData);
     return contenidos.items;
    //print(unidades.items[0].titulo);
    //return [];
    
  }

   vistas(String id) {
    String _url = api.api()  + "vistas/" + id.toString()+"/"+api.key;
    final resp = http.get(_url);
  }

}

final contenidoProvider = new ContenidoProvider();