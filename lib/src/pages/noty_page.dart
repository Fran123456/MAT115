import 'package:MAT115/src/models/unidades_model.dart';
import 'package:flutter/material.dart';



class NotyPage extends StatefulWidget {
  NotyPage({Key key}) : super(key: key);

  @override
  _NotyPageState createState() => _NotyPageState();
}

class _NotyPageState extends State<NotyPage> {
@override
    Widget build(BuildContext context) {

     List arg = ModalRoute.of(context).settings.arguments;
   

          return Scaffold(
          appBar: AppBar(
            title: Text("Notificación"),
          ),
          body:  Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child:    Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                         ListTile(
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          leading: Icon(Icons.speaker_notes),
                          title: Text(arg[3], style: TextStyle(fontSize: 25.0) ,),
                          subtitle: Text(arg[4], style: TextStyle(fontSize: 17.0),),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              color: Colors.blue,
                              child: const Text('REGRESAR'),
                              onPressed: () {
                                Navigator.of(context).pop();
                                //Navigator.pushNamed(context, '/');
                              },
                            ),
                            /*FlatButton(
                              color: Colors.blue,
                              child: const Text('IR'),
                              onPressed: () { /* ... */ },
                            ),*/
                          ],
                        ),
                      ],
                    ),
                  ),
                )

        );
   }


   /*actionUrl(String url, int id){
     
     if(url=="materia"){
       Navigator.pushNamed(context, '/');
     }else if(url=="unidad"){
       Unidad op = Unidad();
       op.id = id;
      
       //Navigator.pushNamed(context, 'unidades', arguments: op);
     }
   }*/

 



}



























