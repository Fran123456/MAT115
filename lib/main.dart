import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/default_page.dart';
import 'package:MAT115/src/routes/routes.dart';



void main() => runApp(MyApp());
 

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  void initState() {
    
    super.initState();
  }

  

  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAT115',
      debugShowCheckedModeBanner: false,
     initialRoute: '/',
     routes: routes(),
     onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => DefaultPage()
        );
     } ,
     builder: (BuildContext context , Widget child){
        myInterstitial
        ..load()
        ..show(
          anchorType: AnchorType.bottom,
          anchorOffset: 0.0,
          horizontalCenterOffset: 0.0,
        );
        return Center(child: child,);
     },
    );
  }*/

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAT115',
      debugShowCheckedModeBanner: false,
     initialRoute: '/',
     routes: routes(),
     onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => DefaultPage()
        );
     } ,
    );
  }


}