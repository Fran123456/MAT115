import 'dart:convert';
import 'package:MAT115/src/models/Imagenes_model.dart';
import 'package:MAT115/src/models/producto_model.dart';
import 'package:http/http.dart' as http;
import 'api/api_provider.dart';

class ProductoProvider{

  Future<List<Producto>> getProductos() async{
    String _url =api.api()+"getProductos/"+api.key;
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final productos = new Productos.fromJsonList(decodeData);
     return productos.items;
    //print(unidades.items[0].titulo);
    //return [];
  }


  Future<List<Imagen>> getPictures(int id) async{
    String _url =api.api()+"getPictures/"+id.toString()+"/"+api.key;
     final resp =await http.get(_url);
     final decodeData = json.decode(resp.body);
     final imagenes = new Imagenes.fromJsonList(decodeData);
     return imagenes.items;
    //print(unidades.items[0].titulo);
    //return [];
  }

}

final productosProvider = new ProductoProvider();