import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:MAT115/src/providers/unidades_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';





class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
        title: Text(api.nameApp),
      ),
      body: _lista(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, 'info');
        },
        child: Icon(Icons.info),

      ),
    );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista() {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: unidadesProvider.getUnidades(),
       builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
         if(snapshot.hasData){
           return ListView(
           children: _listaItems(snapshot.data, context),
         );
         }else if(snapshot.hasError){
           return Text("Error");
         }
         return misWidgets.espera();

       },
     );
  }


  //retorna listas
  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
      
     final List<Widget> opciones = [];
     for (var op in data) {

       final widgetTemp =  ListTile(
         title: Text(op.titulo),
         leading: Icon(Icons.folder ,color: Colors.blue),
         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
         onTap: (){

          
          Navigator.pushNamed(context, 'temario', arguments: op.id);
          
         },
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }


}


