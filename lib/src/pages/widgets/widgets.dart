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
  



}

_MisWidgets misWidgets =  new _MisWidgets();