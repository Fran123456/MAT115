import 'package:MAT115/src/providers/push_notifications_provider.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/default_page.dart';
import 'package:MAT115/src/routes/routes.dart';
import 'package:flutter/services.dart';



void main() => runApp(MyApp());
 

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  void initState() {
    
    super.initState();
     final pushProvider = PushNotificationProvider();
     pushProvider.iniNotifications();
     pushProvider.mensaje.listen( (arg){
       navigatorKey.currentState.pushNamed('noty', arguments: arg);
     } );
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

  /*  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white,

    ));*/

    return MaterialApp(
      title: 'FIARES',
      debugShowCheckedModeBanner: false,
      //theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      navigatorKey: navigatorKey,
      initialRoute: 'carrera',
      routes: routes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => DefaultPage()
        );
     } ,
    );
  }


}