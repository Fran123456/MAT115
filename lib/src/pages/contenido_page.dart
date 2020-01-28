import 'package:MAT115/src/models/contenido_model.dart';
import 'package:MAT115/src/models/temario_model.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/providers/contenido_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

   @override
   Widget build(BuildContext context) {
     
     Temario contenidoId = ModalRoute.of(context).settings.arguments;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
          title: Text(contenidoId.titulo),
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
                misWidgets.titulos("Contenido", ""),
                _lista(contenidoId.id)
                ],
              ),
            )
          ],
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
           return Table(
             children: _listaItems(snapshot.data, context),
           );
         }else if (snapshot.hasError){
            return misWidgets.error();
         }else {
            return misWidgets.espera();
         }
         
       },
     );
  }


   List<TableRow> _listaItems(List<dynamic> data, BuildContext context){
    final List<TableRow> opciones = [];
    for (Contenido op in data) {
      final widgetTemp = TableRow(
        children: [
          crearBtn(context, op)
        ]
      );
     opciones.add(widgetTemp);
    }
    return opciones;
  }


  
  Widget crearBtn(context, Contenido op){
    IconData icono;
    if(op.pdf == null){
       icono = FontAwesomeIcons.youtube;  
     }else{
      icono = FontAwesomeIcons.filePdf;  
     }
    //filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
     return GestureDetector(
          onTap: (){
            if(op.pdf == null){
              Navigator.pushNamed(context, 'video', arguments: op.url);
            }else{
              Navigator.pushNamed(context, 'pdf', arguments: op.pdf);
            }
          },
          child: Container(
          height: 70.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 16.0,
                child: Icon(icono, color: Colors.white, size: 14.0 ,),    
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Text(op.titulo, style: TextStyle(color: Colors.pinkAccent, fontSize: 16.0),),
              ),
              Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 14.0,
                  child: Icon(Icons.remove_red_eye, color: Colors.white, size: 12.0 ,),
                ),
               Text(op.vistas, style: TextStyle(color: Colors.white, fontSize: 12),)
               ],
              ),
              SizedBox(width: 5,),
            ],
          ),
        ),
     );
  }



   //retorna listas
  /*List<Widget> _listaItems(List<dynamic> data, BuildContext context){
      
     final List<Widget> opciones = [];
     
     for (var op in data) {
       Widget widgetTemp;
         if (op.pdf == null){
           //videos
              widgetTemp =  ListTile(
              title: Text(op.titulo),
              subtitle: Row(children: <Widget>[Icon(Icons.remove_red_eye), Padding(padding: EdgeInsets.fromLTRB(6, 0, 0, 0) ,child: Text(op.vistas)) ,],) ,
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
              subtitle: Row(children: <Widget>[Icon(Icons.remove_red_eye), Padding(padding: EdgeInsets.fromLTRB(6, 0, 0, 0) ,child: Text(op.vistas)) ,],) ,
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
  }*/

  


}



