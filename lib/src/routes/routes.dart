import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/home_page.dart';
import 'package:MAT115/src/pages/temario_page.dart';

Map<String, WidgetBuilder> routes(){

  return  <String, WidgetBuilder>{
       '/':(BuildContext context)=>HomePage(),
       'temario':(BuildContext context)=>TemarioPage(),
     };
}