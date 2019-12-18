import 'package:flutter/material.dart';
import 'package:MAT115/src/pages/default_page.dart';
import 'package:MAT115/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
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