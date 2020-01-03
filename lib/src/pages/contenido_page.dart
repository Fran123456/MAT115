import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/providers/contenido_provider.dart';



class ContenidoPage extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     
     final contenidoId = ModalRoute.of(context).settings.arguments;
      return Scaffold(
      appBar: AppBar(
        title: Text(api.nameApp + " - contenidos"),
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
              title: Text(op.titulo),
              leading: Icon(Icons.storage ,color: Colors.blue),
              trailing: Icon(Icons.video_library,color: Colors.blue),
              onTap: (){
                Navigator.pushNamed(context, 'video', arguments: op.url);
              //  print(op.id);
              },
             );

              /*widgetTemp = Card(
                  child: ListTile(
                    leading: Icon(Icons.folder ,color: Colors.blue),
                    title: Text(op.url),
                  ),
                );*/


         }else{
           //PDF
              widgetTemp =  ListTile(
              title: Text(op.titulo),
              leading: Icon(Icons.storage ,color: Colors.blue),
              trailing: Icon(Icons.picture_as_pdf ,color: Colors.blue),
              onTap: (){
                Navigator.pushNamed(context, 'pdf', arguments: op.pdf);
              //  print(op.id);
              },
             );

            /* widgetTemp = Card(
                  child: ListTile(
                    leading: Icon(Icons.folder ,color: Colors.blue),
                    title: Text(op.pdf),
                  ),
                );*/
         }
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }

  


}



