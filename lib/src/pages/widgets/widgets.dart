import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _MisWidgets{
 

 Widget espera(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }


Widget error(){
  return Center(
    child: Text("Error, cierra la app y vuelva abrir.",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    ),
  );
}


 Widget barraNav(context){
      return ListView(
        padding: EdgeInsets.zero,
        children:  <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
             // image: Image
              image: const DecorationImage(
                image: AssetImage('assets/sin.png'),
               // fit: BoxFit.cover,
              ),
             
            ),
            child: Text(
              '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading:  new Icon(FontAwesomeIcons.bookOpen),
            title: Text('Carreras'),
            onTap: (){
              Navigator.pushNamed(context, 'carrera');
            },
          ),
          ListTile(
            leading:  new Icon(FontAwesomeIcons.shoppingBag, color: Colors.blue,),
            title: Text('Market Place'),
            onTap: (){
              Navigator.pushNamed(context, 'productos');
            },
          ),
          ListTile(
            leading: new Icon(FontAwesomeIcons.whatsapp, color: Colors.green,),
            title: Text('Grupos'),
            onTap: (){
              Navigator.pushNamed(context, 'grupos');
            },
          ),
          ListTile(
            leading:  new Icon(FontAwesomeIcons.university, color: Colors.red,),
            title: Text('ASEIAS'),
            onTap: (){
             // Navigator.pushNamed(context, 'info');
            },
          ),
          ListTile(
            leading: new Icon(FontAwesomeIcons.user, ),
            title: Text('Colaboradores'),
            onTap: (){
              Navigator.pushNamed(context, 'colaboradores');
            },

            
          ),
           ListTile(
            leading:  new Icon(FontAwesomeIcons.pencilAlt,),
            title: Text('Tutorias'),
            onTap: (){
             // Navigator.pushNamed(context, 'info');
            },
          ),
          ListTile(
            leading:  new Icon(FontAwesomeIcons.info,),
            title: Text('Info'),
            onTap: (){
              Navigator.pushNamed(context, 'info');
            },
          ),
        ],
      );
  }

  Widget subtitulo(String texto, double fontS){
   return Padding(
       padding:EdgeInsets.all(16.0),
       child: Text(
          texto,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle( fontSize: fontS),
        ),
     );
  }




   Widget fondoApp(){
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi/3.0,
        child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        /*Positioned(
          top: -200.0,
          child: cajaRosa,
        )*/
      ],
    );
 }



 Widget titulos(titulo, subtitulo){
   return SafeArea(
      child: Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(titulo, style: TextStyle(color: Colors.white,fontSize: 22.0, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10.0,),
           // Text(subtitulo, style: TextStyle(color: Colors.white,fontSize: 20.0)),
          ],
        ),
      )
   );
 }
  



}

_MisWidgets misWidgets =  new _MisWidgets();