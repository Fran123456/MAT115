import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';
import 'package:MAT115/src/models/producto_model.dart';
import 'package:MAT115/src/providers/producto_provider.dart';

//materias



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
        title: Text("Ventas"),
      ),
      resizeToAvoidBottomPadding: false,
      drawer: Drawer(
      child: misWidgets.barraNav(context),
      ),
      body: _lista(),
    );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista() {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: productosProvider.getProductos(),
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
      
     final List<Widget> opciones = [];
     
     opciones.add(Padding(padding:EdgeInsets.all(10.0),));
   
     for (Producto op in data) {

      /* final widgetTemp =  ListTile(
         title: Text(op.nombre),
         subtitle: Text(op.descripcion ?? ""),
         //leading: Icon(Icons.insert_emoticon ,color: Colors.blue),
         leading: Image.network('https://frasesparami.com/wp-content/uploads/2019/06/fotos-tumblr.jpg'),
         
       );*/



       final widgetTemp =  Padding(
         padding:EdgeInsets.fromLTRB(10, 3, 10, 3),
         child: Card(
          color: Colors.white70,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(padding:EdgeInsets.all(8.0),),
              Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              height: 200, width: 200,),
               ListTile(
                //leading: Icon(Icons.album, size: 50),
                title: Text(op.titulo),
                subtitle: Text(op.fecha),
                onTap: (){

                },
              ),
            ],
          ),
        ),
       );
        

       
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }


}









 
