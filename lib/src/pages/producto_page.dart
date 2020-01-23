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
        title: Text("Ventas"),
      ),
      resizeToAvoidBottomPadding: false,
      drawer: Drawer(
      child: misWidgets.barraNav(context),
      ),
      body: _lista(productoId.id),
    );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista(int id) {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: productosProvider.getPictures(id),
       builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
         if(snapshot.hasData){
           return ListView(
           children: _listaItems(snapshot.data, context),
        );
         }else if(snapshot.hasError){
           return misWidgets.error();
         }
         return misWidgets.espera();

       },
     );
  }


  //retorna listas
  List<Widget> _listaItems(List<dynamic> data, BuildContext context){

    Producto productoId = ModalRoute.of(context).settings.arguments;


    final c = Card(
        clipBehavior: Clip.antiAlias,
       
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text(productoId.titulo, style: TextStyle(fontSize: 30)),
            ),
            
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text(productoId.descripcion ?? "sin descripión", style: TextStyle(fontSize: 17)),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(2),
              child: ListTile(
                 title: Text("Publicado por: "+productoId.nombre, style: TextStyle(fontSize: 16),),
                 subtitle: Text("Fecha: " + productoId.fecha),
                 trailing: Icon(FontAwesomeIcons.whatsapp ,color: Colors.blue, size: 27,),
                 onTap: (){
                  
                 },
              )
            ),
            
            
          ],
        )

        );

      
     final List<Widget> opciones = [];
     opciones.add(Padding(padding:EdgeInsets.all(10.0),));
     opciones.add(c);
   
     for (Imagen op in data) {

      /* final widgetTemp =  ListTile(
         title: Text(op.nombre),
         subtitle: Text(op.descripcion ?? ""),
         //leading: Icon(Icons.insert_emoticon ,color: Colors.blue),
         leading: Image.network('https://frasesparami.com/wp-content/uploads/2019/06/fotos-tumblr.jpg'),
         
       );*/
          final widgetTemp  = Image.network(api.apiUploads()+ op.url);
            
    
      opciones.add(widgetTemp);
     }
     return opciones;
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




    




 
