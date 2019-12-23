import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/providers/temario_provider.dart';

class TemarioPage extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     final unidadId = ModalRoute.of(context).settings.arguments;
      return Scaffold(
      appBar: AppBar(
        title: Text("MAT115 - Temas"),
      ),
      body: _lista(unidadId),
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
     for (var op in data) {
         
       final widgetTemp =  ListTile(

         title: Text(op.titulo),
         leading: Icon(Icons.folder ,color: Colors.blue),
         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
         onTap: (){
          Navigator.pushNamed(context, 'contenido', arguments: op.id);
        //  print(op.id);
         },
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }

  


}



