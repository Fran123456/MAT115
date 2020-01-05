import 'package:MAT115/src/models/materia_model.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';
import 'package:MAT115/src/providers/materias_provider.dart';

//materias



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
  /*  myInterstitial
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
      bottomNavigationBar: BottomNavigationBar(
        items: misWidgets.listaBtn(),
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista() {

     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: materiasProvider.getMaterias(),
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
     
    /* opciones.add(
        Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20.0, 0, 10),
              child: Text("MATERIAS",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.blue)
              ),
            ),
        )
     );
     opciones.add(Divider());*/
     for (Materia op in data) {

       final widgetTemp =  ListTile(
         title: Text(op.titulo),
         subtitle: Text(op.siglas),
         leading: Icon(Icons.folder ,color: Colors.blue),
         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
         onTap: (){
          Navigator.pushNamed(context, 'unidades', arguments: op);
          
         },
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }


}


