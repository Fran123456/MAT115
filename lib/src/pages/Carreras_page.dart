import 'package:MAT115/src/models/carrera_model.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';
import 'package:MAT115/src/providers/carrera_provider.dart';

//materias

class CarreraPage extends StatefulWidget {
  @override
  _CarreraPageState createState() => _CarreraPageState();
}

class _CarreraPageState extends State<CarreraPage> {
  
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
        title: Text(api.nameApp),
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
               misWidgets.titulos("TODAS LAS CARRERAS", ""),
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
      future: carrerasProvider.getCarreras(),
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

  //retorna listas
  List<TableRow> _listaItems(List<dynamic> data, BuildContext context){
    final List<TableRow> opciones = [];
    for (Carrera op in data) {
      final widgetTemp = TableRow(
        children: [
          crearBtn(context, op)
        ]
      );
     opciones.add(widgetTemp);
    }
    return opciones;
  }

  Widget crearBtn(context, Carrera op){
    //filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
     return GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'materia', arguments: op);
          },
          child: Container(
          height: 130.0,
          margin: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107,1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 35.0,
                child: Icon(Icons.library_books, color: Colors.white, size: 30.0 ,),
              ),
              Center(
                child: Text(op.carrera, style: TextStyle(color: Colors.pinkAccent, fontSize: 20.0, fontWeight: FontWeight.bold),),
              ),
              
              
              
            ],
          ),
        ),
     );
  }


}


