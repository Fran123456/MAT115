import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _MisWidgets{
 

 Widget espera(){
    return Container(
      height: 400,
      child: Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
        ),
      ),
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

     TextStyle estilos = TextStyle(color: Colors.white);
     var colores = Colors.pinkAccent;

      return Container(
        decoration: BoxDecoration(
           gradient: LinearGradient(
                  begin: FractionalOffset(0.0, 0.5),
                  end: FractionalOffset(0.0, 1.0),
                  colors: [
                    Color.fromRGBO(52, 54, 101, 1.0),
                    Color.fromRGBO(35, 37, 57, 1.0),
                  ]
                ),
          ),
        child: ListView(
        padding: EdgeInsets.zero,
        children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset(0.0, 0.5),
                  end: FractionalOffset(0.0, 1.0),
                  colors: [
                    Color.fromRGBO(35, 37, 57, 1.0),
                    Color.fromRGBO(52, 54, 101, 1.0),
                  ]
                ),
                //color: Colors.blue,
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
              leading:  new Icon(FontAwesomeIcons.bookOpen, color: colores,),
              title: Text('Carreras', style: estilos,),
              onTap: (){
                Navigator.pushNamed(context, 'carrera');
              },
            ),
            ListTile(
              leading:  new Icon(FontAwesomeIcons.shoppingBag, color: colores,),
              title: Text('Marketplace', style: estilos,),
              onTap: (){
                Navigator.pushNamed(context, 'productos');
              },
            ),
            ListTile(
              leading: new Icon(FontAwesomeIcons.whatsapp, color: colores,),
              title: Text('Grupos', style: estilos,),
              onTap: (){
                Navigator.pushNamed(context, 'grupos');
              },
            ),
           /* ListTile(
              leading:  new Icon(FontAwesomeIcons.university, color: colores,),
              title: Text('ASEIAS', style: estilos,),
              onTap: (){
              // Navigator.pushNamed(context, 'info');
              },
            ),*/
            ListTile(
              leading: new Icon(FontAwesomeIcons.user,  color: colores,),
              title: Text('Colaboradores', style: estilos,),
              onTap: (){
                Navigator.pushNamed(context, 'colaboradores');
              },

            ),
           /* ListTile(
              leading:  new Icon(FontAwesomeIcons.pencilAlt, color: colores,),
              title: Text('Tutorias', style: estilos,),
              onTap: (){
              // Navigator.pushNamed(context, 'info');
              },
            ),*/
            ListTile(
              leading:  new Icon(FontAwesomeIcons.info, color: colores,),
              title: Text('Sobre nosotros', style: estilos,),
              onTap: (){
                Navigator.pushNamed(context, 'info');
              },
            ),
          ],
        ),
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
      padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(titulo, style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold)),
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