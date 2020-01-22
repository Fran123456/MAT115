import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class InfoPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {



     
      return Scaffold(
      appBar: AppBar(
        title: Text("Sobre nosotros"),
      ),
      body: misCartas(),
      
    );
   }

   Widget misCartas(){
     return ListView(
       children: <Widget>[
          Column(
            children: <Widget>[
              cartaMi(),
             // paypal(),
              agradecimientos()
            ],
          )
        ],
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










       