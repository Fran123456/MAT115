import 'dart:async';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider{

  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  final _mensajesStreamController = StreamController<List>.broadcast();
  Stream<List> get mensaje => _mensajesStreamController.stream;

  iniNotifications(){
    
    _firebaseMessaging.requestNotificationPermissions();

    //cuando se necesite enviar notificacion a un usuario determinado
    _firebaseMessaging.getToken().then((token){
       print("===FCM token==");
       print(token);
    });

    _firebaseMessaging.configure(
      onMessage:(info){
        print(info);
        List<String> listaNoty = List();
        if(Platform.isAndroid){
         // String titulo = info['notification']['title'] ?? "no-data";
         // String mensaje = info['notification']['body'] ?? "no-data";
          String id = info['data']['id'] ?? "no-data";
          String key = info['data']['key'] ?? "no-data";
          String type = info['data']['type'] ?? "no-data";
         // listaNoty.add(titulo);
         // listaNoty.add(mensaje);
          listaNoty.add(id);
          listaNoty.add(key);
          listaNoty.add(type);
          _mensajesStreamController.sink.add(listaNoty);
        }

        
      },
      onLaunch:(info){
         print(info);
         //final noti = info['data']['id'];

          List<String> listaNoty = List();
          if(Platform.isAndroid){
           // String titulo = info['notification']['title'] ?? "no-data";
           // String mensaje = info['notification']['body'] ?? "no-data";
            String id = info['data']['id'] ?? "no-data";
            String key = info['data']['key'] ?? "no-data";
            String type = info['data']['type'] ?? "no-data";
         //   listaNoty.add(titulo);
          //  listaNoty.add(mensaje);
            listaNoty.add(id);
            listaNoty.add(key);
            listaNoty.add(type);
            _mensajesStreamController.sink.add(listaNoty);
          }

      },
      onResume: (info){
        print(info);
        
        List<String> listaNoty = List();
        if(Platform.isAndroid){
          //String titulo = info['notification']['title'] ?? "no-data";
        //  String mensaje = info['notification']['body'] ?? "no-data";
          String id = info['data']['id'] ?? "no-data";
          String key = info['data']['key'] ?? "no-data";
          String type = info['data']['type'] ?? "no-data";
         // listaNoty.add(titulo);
         // listaNoty.add(mensaje);
          listaNoty.add(id);
          listaNoty.add(key);
          listaNoty.add(type);
          _mensajesStreamController.sink.add(listaNoty);
        }
        

      }

    );

  }
  dispose(){
    _mensajesStreamController?.close();
  }

  
}