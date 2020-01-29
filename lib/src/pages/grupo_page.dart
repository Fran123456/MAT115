import 'dart:ui';

import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class GrupoPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
          title: Text("Grupos"),
        ),
        drawer: Drawer(
        child: misWidgets.barraNav(context),
        ),
        body: Stack(
          children: <Widget>[
            misWidgets.fondoApp(),
            Center(
              child: cuerpo(),
            ),
          ],
        ),
      );

   }

   Widget cuerpo(){
      TextStyle estilo  = TextStyle(
        color: Colors.white
      );
      return ListView(
       children: <Widget>[
         ListTile(
           title: Text("matemática III", style: estilo),
           subtitle: Text("MAT315", style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/CQHD50kTCEsBVrKlXKQDxz"), 
         ),

         ListTile(
           title: Text("Física II" , style: estilo),
           subtitle: Text("FIR215" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/BN5rnsh2TlxBMGLKGrc4M2"), 
         ),

         ListTile(
           title: Text("Probabilidad y Estadistica" , style: estilo),
           subtitle: Text("PYE115" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/CjdfKX99AIAK0X6V00VtTW"), 
         ),

         ListTile(
           title: Text("Fundamentos de economica" , style: estilo),
           subtitle: Text("FDE115" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/DxrJBSwCpQBLNJ49p2umag"), 
         ),

         ListTile(
           title: Text("Ingeniería Económica" , style: estilo),
           subtitle: Text("IEC115" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/BxzIvStETNx3RN22e7fiDV"), 
         ),

         ListTile(
           title: Text("Sistemas y Procedimientos" , style: estilo),
           subtitle: Text("SYP115" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/Ic51xsLkoTvF6IkrYo1GsL"), 
         ),

          ListTile(
           title: Text("Sistemas Digitales I" , style: estilo),
           subtitle: Text("SDU115" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/BZTUKSU1yySKcNExBwsGuL"), 
         ),

         ListTile(
           title: Text("Métodos de optimización" , style: estilo),
           subtitle: Text("MOP115" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/HHHdQsBRLIW0s1hGNqJC70"), 
         ),

         ListTile(
           title: Text("Programación II (Sistemas)" , style: estilo),
           subtitle: Text("PRN215" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/IUU7xUrrAUL2XNDQSwmGjB"), 
         ),

         ListTile(
           title: Text("Psicología Social" , style: estilo),
           subtitle: Text("PSI115" , style: estilo),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.pinkAccent),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.pink),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/H1FjKSnW7c5DaiV3fnncKT"), 
         ),

       ],
      );
   }



   _launchURL(String urlx) async {
      var url = urlx;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
}