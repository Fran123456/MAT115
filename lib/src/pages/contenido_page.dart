import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/providers/contenido_provider.dart';

class ContenidoPage extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     final contenidoId = ModalRoute.of(context).settings.arguments;
      return Scaffold(
      appBar: AppBar(
        title: Text("MAT115 - contenidos"),
      ),
      body: _lista(contenidoId),
    );
   }

//Retorna la lista que usaremos en el body
  Widget _lista(int contenidoId) {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: contenidoProvider.getContenidos(contenidoId),
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
     for (var op in data) {

       Widget widgetTemp;
         if (op.pdf == null){
           //videos
               widgetTemp =  ListTile(
              title: Text(op.url),
              leading: Icon(Icons.folder ,color: Colors.blue),
              trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
              onTap: (){
                //Navigator.pushNamed(context, 'contenido', arguments: op.id);
              //  print(op.id);
              },
             );
         }else{
           //PDF
             widgetTemp =  ListTile(
              title: Text(op.pdf),
              leading: Icon(Icons.folder ,color: Colors.blue),
              trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
              onTap: (){
                Navigator.pushNamed(context, 'contenido', arguments: op.id);
              //  print(op.id);
              },
             );
         }




       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }

  


}



