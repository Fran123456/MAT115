import 'dart:convert';
import 'package:MAT115/src/models/temario_model.dart';
import 'package:http/http.dart' as http;


class TemarioProvider{

  Future<List<Temario>> getTemarios(int id) async{
      String _url ="http://192.168.1.12/subjectResourcesAPI/public/api/temariosByUnidades/" + id.toString();
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final temarios = new Temarios.fromJsonList(decodeData);
     return temarios.items;
    //print(unidades.items[0].titulo);
    //return [];
  }

}

final temariosProvider = new TemarioProvider();