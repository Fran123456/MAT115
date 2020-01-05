import 'package:MAT115/src/models/materia_model.dart';
import 'package:MAT115/src/models/unidades_model.dart';
import 'package:MAT115/src/providers/api/api_provider.dart';
import 'package:MAT115/src/providers/unidades_provider.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/widgets/widgets.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:MAT115/src/pages/widgets/anuncios.dart';





class UnidadesPage extends StatefulWidget {
  @override
  _UnidadesPageState createState() => _UnidadesPageState();
}

class _UnidadesPageState extends State<UnidadesPage> {

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-4742776392392231~5346828662");
    super.initState();
  }


int _selectedIndex = 0;
void _onItemTapped(int index) {
  if(index==0){
    Navigator.pushNamed(context, 'grupos');
  }
  if(index==1){
    Navigator.pushNamed(context, 'info');
  }
}
  
@override
  Widget build(BuildContext context) {
     Materia materiaId = ModalRoute.of(context).settings.arguments;
    myInterstitial
    ..load()
    ..show(
      anchorType: AnchorType.bottom,
      anchorOffset: 0.0,
      horizontalCenterOffset: 0.0,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(materiaId.siglas),
      ),
      body: _lista(materiaId.id),
       bottomNavigationBar: BottomNavigationBar(
        items: misWidgets.listaBtn(),
        currentIndex: _selectedIndex,
        
        onTap: _onItemTapped,
      ),
    );
  }


 //Retorna la lista que usaremos en el body
  Widget _lista(int materiaId) {
     return FutureBuilder(
      // future: menuProvider.cargarData(),
      future: unidadesProvider.getUnidades(materiaId),
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
     for (Unidad op in data) {

       final widgetTemp =  ListTile(
         title: Text(op.titulo),
         leading: Icon(Icons.folder ,color: Colors.blue),
         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue),
         onTap: (){

          
          Navigator.pushNamed(context, 'temario', arguments: op);
          
         },
       );
       opciones.add(widgetTemp);
       opciones.add(Divider());

     }
     return opciones;
  }


}


