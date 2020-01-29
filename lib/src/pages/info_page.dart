import 'package:MAT115/src/models/Imagenes_model.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class InfoPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
          title: Text("Sobre nosotros"),
        ),
        drawer: Drawer(
        child: misWidgets.barraNav(context),
        ),
        body: Stack(
          children: <Widget>[
            misWidgets.fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                //misWidgets.titulos("TODAS LAS MATERIAS", ""),
                  Table(
                    children:tabla(),
                  )
                ],
              ),
            )
          ],
        ),
      );

   }


  List<TableRow> tabla(){
   final List<TableRow> opciones = [];
   var aux  = TableRow(
     children: [
       landing(),
     ]
   );

   var aux2  = TableRow(
     children: [
       sobre(),
     ]
   );

   var aux3  = TableRow(
     children: [
       desarrollador(),
     ]
   );

   var aux4  = TableRow(
     children: [
       agradecimiento(),
     ]
   );

   var aux5  = TableRow(
     children: [
       bugs(),
     ]
   );

   opciones.add(aux);
    opciones.add(aux2);
     opciones.add(aux3);
  opciones.add(aux4);
  opciones.add(aux5);
   return opciones;
  }


  Widget landing(){
     return Image(
       image: AssetImage("assets/fiares-land.jpg"),
     );
  }

  /*Widget desarrollador(){
     return ListTile(
         contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 10),
         title: Text("Autor: Francisco Navas", style: TextStyle(fontSize: 20.0) ,),
         subtitle: Text("navasfran98@gmail.com", style: TextStyle(fontSize: 17.0),),
         trailing: Text("Version 1.0"),
     );
  }
*/
  Widget sobre(){
    return Container(
          height: 200.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5,),
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 20.0,
                child: Icon(Icons.bubble_chart, color: Colors.white, size: 20.0 ,),
              ),
              SizedBox(height: 5,),
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                   Expanded(
                    child: Text("Esta es una aplicación esta desarrollada con el proposito de proporcionar" + 
                    " a los alumnos de la Universidad de El Salvador facultad de Ingeniería y Arquitectura, material"+
                    " de apoyo para las materias de diferentes carreras. \n \n" 
                    + "Además de apoyar con otros recursos como: MarketPlace, Grupos de Whatsapp entre otros.",  textAlign: TextAlign.center ,style: TextStyle(
                      color: Colors.white, 
                      fontSize: 14.0, 
                      fontWeight: FontWeight.bold,
                      ),),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 15,),
            ],
          ),
        );
  }


  Widget bugs(){
    return GestureDetector(
       onTap: (){
           _launchURL("https://wa.me/+50370234903");
          },
      child: Container(
          height: 120.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5,),
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 30.0,
                child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 40.0 ,),
              ),
              SizedBox(height: 5,),
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                   Expanded(
                    child: Text("Reporta bugs o realiza tus sugerencias",  textAlign: TextAlign.center ,style: TextStyle(
                      color: Colors.white, 
                      fontSize: 14.0, 
                      fontWeight: FontWeight.bold,
                      ),),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 15,),
            ],
          ),
        )
    );
  }




  Widget agradecimiento(){
    return Container(
          height: 260.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 15,),
              Text("AGRADECIMIENTO ESPECIAL PARA ASEIAS", style: TextStyle(color:Colors.white, fontSize: 17)),
              SizedBox(height: 10,),
              Text("Por apoyarnos en material educativo de diferentes materias.",textAlign: TextAlign.center, style: TextStyle(color:Colors.white)),
              Image(
                     height: 150,
                     width: 150,
                      image: AssetImage("assets/aseias.png"),
                    ),
              SizedBox(height: 9,),
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                   
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 15,),
            ],
          ),
        );
  }
  
  Widget desarrollador(){
    return Container(
          height: 195.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5,),
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 20.0,
                child: Icon(Icons.sentiment_neutral, size: 20.0 ,),
              ),
              SizedBox(height: 5,),
              Text("EQUIPO", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 15,),
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                   Expanded(
                    child: Text("Desarrollador aplicación movil: Francisco Navas \nCorreo: navasfran98@gmail.com",  textAlign: TextAlign.justify ,style: TextStyle(
                      color: Colors.white, 
                      fontSize: 14.0, 
                      ),),
                  ),
                  
                  SizedBox(width: 10,),
                ],
              ),
             SizedBox(height: 15,),
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                   Expanded(
                    child: Text("Desarrollador aplicación web: Eduardo Reyes \nCorreo: eduardo98@mail.com \n",  textAlign: TextAlign.justify ,style: TextStyle(
                      color: Colors.white, 
                      fontSize: 14.0, 
                      ),),
                  ),
                  
                  SizedBox(width: 10,),
                ],
              ),
              
              SizedBox(height: 5,),
            ],
          ),
        );
  }


  Widget agradecimientos(){
     return  Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child:Column(
                          children:  <Widget>[
                            ListTile(
                                title: Text('Agradecimientos', style: TextStyle(fontSize: 20),),
                              ),
                            Card(
                              child: ListTile(
                                title: Text('Andres Cordero'),
                                subtitle: Text("Aporte de contenido"),
                              ),
                            ),
                          ],
                      )
              );
  }


   Widget cartaMi(){
      return  Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child:    Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                         ListTile(
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          
                          title: Text("Autor: Francisco Navas", style: TextStyle(fontSize: 20.0) ,),
                          subtitle: Text("navasfran98@gmail.com", style: TextStyle(fontSize: 17.0),),
                          trailing: Text("Version 1.0"),
                        ),
                        ButtonBar(
                          children: <Widget>[
                             IconButton(
                              icon: new Icon(FontAwesomeIcons.facebook), 
                              color: Colors.blue,
                              iconSize: 40,
                              onPressed:  () =>   _launchURL("https://www.facebook.com/fran.navas.96"),
                              ),
                              IconButton(
                              icon: new Icon(FontAwesomeIcons.whatsapp), 
                              color: Colors.green,
                              iconSize: 40,
                              onPressed:  () =>   _launchURL("https://wa.me/+50370234903"),
                              
                              ),
                              IconButton(
                              icon: new Icon(FontAwesomeIcons.chrome), 
                              color: Colors.black,
                              iconSize: 40,
                              onPressed:  () =>   _launchURL("https://www.apiuesfia.website"),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
   }



    /*Widget paypal(){
      return  Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child:    Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                         ListTile(
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          title: Text("¿Deseas apoyar el proyecto?", style: TextStyle(fontSize: 19.0) ,),
                          subtitle: Text("Puedes donarnos por paypal, tu donación servira para pagar el alojamiento del sitio web y de nuestra API.", style: TextStyle(fontSize: 17.0),),
                        ),
                        ButtonBar(
                          children: <Widget>[
                             IconButton(
                              icon: new Icon(FontAwesomeIcons.paypal), 
                              color: Colors.blue,
                              iconSize: 40,
                              onPressed:  () =>   _launchURL("https://paypal.me/FranciscoNavas?locale.x=es_XC"),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
   }*/



   _launchURL(String urlx) async {
      var url = urlx;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
}










       