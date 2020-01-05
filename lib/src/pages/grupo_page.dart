import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class GrupoPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Grupos"),
      ),
      body: Center(
        child: cuerpo(),
      ),
    );
   }

   Widget cuerpo(){
      return ListView(
       children: <Widget>[
         ListTile(
           title: Text("matemática III"),
           subtitle: Text("MAT315"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/CQHD50kTCEsBVrKlXKQDxz"), 
         ),

         ListTile(
           title: Text("Física II"),
           subtitle: Text("FIR215"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/BN5rnsh2TlxBMGLKGrc4M2"), 
         ),

         ListTile(
           title: Text("Probabilidad y Estadistica"),
           subtitle: Text("PYE115"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/CjdfKX99AIAK0X6V00VtTW"), 
         ),

         ListTile(
           title: Text("Fundamentos de economica"),
           subtitle: Text("FDE115"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/DxrJBSwCpQBLNJ49p2umag"), 
         ),

         ListTile(
           title: Text("Ingeniería Económica"),
           subtitle: Text("IEC115"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/BxzIvStETNx3RN22e7fiDV"), 
         ),

         ListTile(
           title: Text("Sistemas y Procedimientos"),
           subtitle: Text("SYP115"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/Ic51xsLkoTvF6IkrYo1GsL"), 
         ),

          ListTile(
           title: Text("Sistemas Digitales I"),
           subtitle: Text("SDU115"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/BZTUKSU1yySKcNExBwsGuL"), 
         ),

         ListTile(
           title: Text("Métodos de optimización"),
           subtitle: Text("MOP115"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/HHHdQsBRLIW0s1hGNqJC70"), 
         ),

         ListTile(
           title: Text("Programación II (Sistemas)"),
           subtitle: Text("PRN215"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
           onTap:() =>   _launchURL("https://chat.whatsapp.com/IUU7xUrrAUL2XNDQSwmGjB"), 
         ),

         ListTile(
           title: Text("Psicología Social"),
           subtitle: Text("PSI115"),
           leading: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue),
           trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
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