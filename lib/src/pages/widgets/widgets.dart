import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _MisWidgets{
 

 Widget espera(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }

List<BottomNavigationBarItem> listaBtn(){
    return const <BottomNavigationBarItem>[
         /* BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),*/
         
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Grupos'),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Info'),
          ),
        ];
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
          ),
          ListTile(
            leading:  new Icon(FontAwesomeIcons.shoppingBag, color: Colors.blue,),
            title: Text('Market Place'),
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
  

}

_MisWidgets misWidgets =  new _MisWidgets();