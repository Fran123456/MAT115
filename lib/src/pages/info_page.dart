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
                image: AssetImage('assets/factory.png'),
                height: 120,
                width: 120,
              ),
           /*   Divider(),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Nosotros pretendemos aportar a la comunidad estudiantil material para que"+
              " tengan aun más herramientas para poder aprobar las materias de la unidad de ciencias básicas." , 
              style: TextStyle(fontSize: 17.0, )),
            ),*/
            Divider(),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Text("Contactanos: navasfran98@gmail.com",
              style: TextStyle(fontSize: 15.0)
              ),
            ),
            
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Text("Desarollado por: Francisco Navas",
              style: TextStyle(fontSize: 15.0)
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(6.0),
                    child: IconButton(
                    icon: new Icon(FontAwesomeIcons.facebook), 
                    color: Colors.blue,
                    iconSize: 40,
                    onPressed:  () =>   _launchURL("https://www.facebook.com/fran.navas.96"),
                    ),
                ),

                Padding(
                  padding: EdgeInsets.all(6.0),
                    child: IconButton(
                    icon: new Icon(FontAwesomeIcons.whatsapp), 
                    color: Colors.green,
                    iconSize: 40,
                    onPressed:  () =>   _launchURL("https://wa.me/+50370234903"),
                    
                    ),
                ),

                Padding(
                  padding: EdgeInsets.all(6.0),
                    child: IconButton(
                    icon: new Icon(FontAwesomeIcons.chrome), 
                    color: Colors.black,
                    iconSize: 40,
                    onPressed:  () =>   _launchURL("https://www.apiuesfia.website"),
                    ),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Text("Si deseas tener acceso a nuestra API, contactanos sera un gusto proporcionarte el acceso, para tu propio uso.",
              style: TextStyle(fontSize: 15.0)
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