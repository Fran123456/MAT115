import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';
import 'package:MAT115/src/models/producto_model.dart';
import 'package:MAT115/src/providers/producto_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductosPage extends StatefulWidget {
  @override
  _ProductosPageState createState() => _ProductosPageState();
}

class _ProductosPageState extends State<ProductosPage> {
  
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


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
          title: Text("Venta"),
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
                misWidgets.titulos("Productos", ""),
                _lista()
                ],
              ),
            )
          ],
        ),
      );

  }


 //Retorna la lista que usaremos en el body
  Widget _lista() {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: productosProvider.getProductos(),
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
    for (Producto op in data) {
      final widgetTemp = TableRow(
        children: [
          crearBtn(context, op)
        ]
      );
     opciones.add(widgetTemp);
    }
    return opciones;
  }

  


  Widget crearBtn(context, Producto op){
    //filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
     return GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'producto', arguments: op);
          },
          child: Container(
          height: 110.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              SizedBox(width: 10,),
              Image.network(api.apiUploads()+op.principal, height: 100, width: 90,
              ),
              SizedBox(width: 9,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child:SizedBox(width:30,), 
                  ),
                  Text(op.titulo ,style: TextStyle(color: Colors.pinkAccent, fontSize: 14.0, fontWeight: FontWeight.bold),),
                  Text(op.fecha ?? "", style: TextStyle(
                      color: Colors.white, 
                      fontSize: 12.0, 
                      fontWeight: FontWeight.bold,
                      )),
                  Text("Publicado por: " + op.nombre??"", style: TextStyle(color:Colors.white)),
                  Text("\$ " + op.precio, style: TextStyle(color:Colors.white)),
                  Expanded(
                    child:SizedBox(width:30,), 
                  ),
                ],
              )
              
              
            ],
          ),
        ),
     );
  }


  //retorna listas
  /*List<Widget> _listaItems(List<dynamic> data, BuildContext context){
      
     final List<Widget> opciones = [];
     
     opciones.add(Padding(padding:EdgeInsets.all(10.0),));
   
     for (Producto op in data) {

      /* final widgetTemp =  ListTile(
         title: Text(op.nombre),
         subtitle: Text(op.descripcion ?? ""),
         //leading: Icon(Icons.insert_emoticon ,color: Colors.blue),
         leading: Image.network('https://frasesparami.com/wp-content/uploads/2019/06/fotos-tumblr.jpg'),
         
       );*/
   /*final widgetTemp  =  Center(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         /* Image.network("https://www.marketingdirecto.com/wp-content/uploads/2019/10/logo-volkswagen.jpg", 
          height: 300, 
          width: 300 ,),*/
           ListTile(
            leading: IconButton(
                icon: Icon(FontAwesomeIcons.whatsapp ,color: Colors.green,size: 28,  ),
                onPressed: (){
                  _launchURL("https://api.whatsapp.com/send?phone=503"+op.whatsapp);
                },
              ),
              trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
            title: Text(op.titulo),
            subtitle: Text( "\$" + op.precio),
            onTap: (){
               Navigator.pushNamed(context, 'producto', arguments: op);
            },
          ),

        ],
      ),
    ),
  );*/


      final widgetTemp = Card(
        
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            Image.network(api.apiUploads()+ op.principal,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListTile(
                 title: Text(op.titulo, style: TextStyle(fontSize: 20),),
                 subtitle: Text("Publicado por: " + op.nombre),
                 trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
                 onTap: (){
                   Navigator.pushNamed(context, 'producto', arguments: op);
                 },
              )
            ),
            
            
          ],
        )

        );

       
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
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




    




 
