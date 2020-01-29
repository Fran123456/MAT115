import 'dart:ui';

import 'package:MAT115/src/models/Imagenes_model.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';
import 'package:MAT115/src/models/producto_model.dart';
import 'package:MAT115/src/providers/producto_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//materias



class ProductoPage extends StatefulWidget {
  @override
  _ProductoPageState createState() => _ProductoPageState();
}

class _ProductoPageState extends State<ProductoPage> {
  
@override
void initState() {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-4742776392392231~5346828662");
    super.initState();
}


    
@override
  Widget build(BuildContext context) {
   /* myInterstitial
    ..load()
    ..show(
      anchorType: AnchorType.bottom,
      anchorOffset: 0.0,
      horizontalCenterOffset: 0.0,
    );*/
    Producto productoId = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
          title: Text(productoId.titulo),
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
                misWidgets.titulos(productoId.titulo, ""),
                carta(productoId),
                _lista(productoId.id)
                ],
              ),
            )
          ],
        ),
      );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista(int id) {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: productosProvider.getPictures(id),
       builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
         if(snapshot.hasData){
           return Table(
             children: _listaItems(snapshot.data, context),
           );
         }else if(snapshot.hasError){
           return misWidgets.error();
         }
         return misWidgets.espera();

       },
     );
  }


  List<TableRow> _listaItems(List<dynamic> data, BuildContext context){
    final List<TableRow> opciones = [];
    for (Imagen op in data) {
      final widgetTemp = TableRow(
        children: [
          crearBtn(context, op)
        ]
      );
     opciones.add(widgetTemp);
    }
    return opciones;
  }
  

Widget carta(Producto op){
      return GestureDetector(
          onTap: (){
            _launchURL("https://wa.me/+503"+ op.whatsapp);
          },
          child: Container(
          height: 145.0,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             SizedBox(width: 10,),
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: 16,),
                  
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        radius: 15.0,
                        child: Icon(FontAwesomeIcons.shoppingBag ,color: Colors.white, size: 15,),
                      ),
                      SizedBox(width: 6,),
                      Text("\$ " + op.precio, style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  
                  SizedBox(width: 6,),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        radius: 15.0,
                        child: Icon(FontAwesomeIcons.whatsapp ,color: Colors.white, size: 20,),
                      ),
                      SizedBox(width: 6,),
                      Text(op.whatsapp, style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  SizedBox(width: 6,),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        radius: 15.0,
                        child: Icon(FontAwesomeIcons.user ,color: Colors.white, size: 20,),
                      ),
                      SizedBox(width: 6,),
                      Text(op.nombre, style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  SizedBox(width: 6,),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        radius: 15.0,
                        child: Icon(FontAwesomeIcons.calendar ,color: Colors.white, size: 20,),
                      ),
                      SizedBox(width: 6,),
                      Text(op.fecha, style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  SizedBox(width: 6,),
                ],
              ),
          ],)
        ),
     );
  }


    Widget crearBtn(context, Imagen op){
    //filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
     return Container(
          height: 410.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(width: 19,),
                Image.network(api.apiUploads()+op.url, height: 390, width: 390,
              ),
              SizedBox(width: 19,),
            ],
          ),
        );
      
  }


  //retorna listas
  


  _launchURL(String urlx) async {
      var url = urlx;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }


}




    




 
