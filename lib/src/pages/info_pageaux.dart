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
      body: Center(
        child: cuerpo(),
      ),
    );
   }

   Widget cuerpo(){
      return Column(
          children: <Widget>[
            Image(
                image: AssetImage('assets/factory2.png'),
                height: 70,
                width: 70,
                color: Colors.blue,
              ),
           
            
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2,0, 2),
              child: Text("Contactanos: navasfran98@gmail.com",
              style: TextStyle(fontSize: 15.0)
              ),
            ),
            
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
              child: Text("Desarollado por: Francisco Navas",
              style: TextStyle(fontSize: 15.0)
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
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
           Padding(
              padding: EdgeInsets.fromLTRB(20, 20,20, 20),
              child: Text("Si tienes contenido, no dudes en compartirlo, sera de gran ayuda para la comunidad, muchas gracias :)",
              style: TextStyle(fontSize: 14.0)
              ),
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