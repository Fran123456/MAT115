import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider{

  List<dynamic> opciones = [];
  
  _MenuProvider(){
    cargarData();
  }

  cargarData(){
    rootBundle.loadString('data/menu_opts.json').then((data){
      Map dataMap = json.decode(data);
    });

  }
}

final menuProvider = new _MenuProvider();