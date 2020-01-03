import 'package:MAT115/src/models/temario_model.dart';
import 'package:MAT115/src/models/unidades_model.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/providers/temario_provider.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';


class TemarioPage extends StatefulWidget {
  @override
  _TemarioPageState createState() => _TemarioPageState();
}

class _TemarioPageState extends State<TemarioPage> {
  

@override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-4742776392392231~5346828662");
    super.initState();
  }


 @override
   Widget build(BuildContext context) {


    /*  myInterstitial
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
        anchorOffset: 0.0,
        horizontalCenterOffset: 0.0,
      );*/

     Unidad unidadId = ModalRoute.of(context).settings.arguments;
      return Scaffold(
      appBar: AppBar(
        title: Text(unidadId.titulo),
      ),
      body: _lista(unidadId.id),
    );
   }

//Retorna la lista que usaremos en el body
  Widget _lista(int unidadId) {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: temariosProvider.getTemarios(unidadId),
      
       builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
         if(snapshot.hasData){
           return ListView(
           children: _listaItems(snapshot.data, context),
         );
         }else if (snapshot.hasError){
            return Text("Error");
         }else {
            return misWidgets.espera();
         }
         
       },
     );
  }


   //retorna listas
  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
      
     final List<Widget> opciones = [];
     for (Temario op in data) {
         
       final widgetTemp =  ListTile(

         title: Text(op.titulo),
         leading: Icon(Icons.folder ,color: Colors.blue),
         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
         onTap: (){
          Navigator.pushNamed(context, 'contenido', arguments: op);
        //  print(op.id);
         },
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }





}







