import 'package:flutter/material.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';

Map<String, WidgetBuilder> routes(){

  return  <String, WidgetBuilder>{
       '/':(BuildContext context)=>HomePage(),
       'alert':(BuildContext context)=>AlertPage(),
     };
}