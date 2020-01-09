import 'package:MAT115/src/providers/contenido_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Homepage
class YoutubePage extends StatefulWidget {
  @override
  _YoutubePageState createState() => _YoutubePageState();
  
}

class _YoutubePageState extends State<YoutubePage> {
  bool soldado = true;
  
YoutubePlayerController _controller;
//final video = ModalRoute.of(context).settings.arguments;
  @override
  void initState(){
      
      super.initState();
  }

  @override
Widget build(BuildContext context){

  String video = ModalRoute.of(context).settings.arguments;

   String cutting = video.substring(17, 28);
   if(soldado==true){
        contenidoProvider.vistas(cutting);
        soldado=false;
      } 
   
   //https://youtu.be/K-I3qJO5gbo
    print(cutting);
    _controller = YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(video),
          flags: YoutubePlayerFlags(
              mute: false,
              autoPlay: true,
              forceHideAnnotation: true,
              hideThumbnail: true,
              
              //controlsVisibleAtStart: true,
          ),

      );

    return YoutubePlayer(
       controller: _controller,
       showVideoProgressIndicator: true,
       
       onReady: () {
          
       },
    );
}
}  
