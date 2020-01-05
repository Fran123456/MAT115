import 'package:MAT115/src/pages/contenido_page.dart';
import 'package:MAT115/src/pages/grupo_page.dart';
import 'package:MAT115/src/pages/info_page.dart';
import 'package:MAT115/src/pages/pdf_page.dart';
import 'package:MAT115/src/pages/unidad_page.dart';
import 'package:MAT115/src/pages/youtube_page.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/home_page.dart';
import 'package:MAT115/src/pages/temario_page.dart';

Map<String, WidgetBuilder> routes(){

  return  <String, WidgetBuilder>{
       '/':(BuildContext context)=>HomePage(),
       'temario':(BuildContext context)=>TemarioPage(),
       'contenido':(BuildContext context)=>ContenidoPage(),
      'video':(BuildContext context)=>YoutubePage(),
       'pdf':(BuildContext context)=>PdfPage(),
       'info':(BuildContext context)=>InfoPage(),
       'unidades':(BuildContext context)=>UnidadesPage(),
       'grupos':(BuildContext context)=>GrupoPage(),
     };
}