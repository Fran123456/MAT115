import 'package:MAT115/src/models/temario_model.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/providers/contenido_provider.dart';



class ContenidoPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<ContenidoPage> {

    @override
    void initState() {
        FirebaseAdMob.instance.initialize(appId: "ca-app-pub-4742776392392231~5346828662");
        super.initState();
    }

    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      if(index==1){
        Navigator.pushNamed(context, 'info');
      }
      if(index==0){
        Navigator.pushNamed(context, 'grupos');
      }
    }

   @override
   Widget build(BuildContext context) {
     
     Temario contenidoId = ModalRoute.of(context).settings.arguments;
      return Scaffold(
      appBar: AppBar(
        title: Text(contenidoId.titulo),
      ),
      body: _lista(contenidoId.id),
      bottomNavigationBar: BottomNavigationBar(
        items: misWidgets.listaBtn(),
        currentIndex: _selectedIndex,
        
        onTap: _onItemTapped,
      ),
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

            
         }
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }

  


}



