import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Homepage
class YoutubePage extends StatefulWidget {
  @override
  _YoutubePageState createState() => _YoutubePageState();
  
}

class _YoutubePageState extends State<YoutubePage> {
  
YoutubePlayerController _controller;
//final video = ModalRoute.of(context).settings.arguments;
  @override
  void initState(){
      super.initState();
  }

  @override
Widget build(BuildContext context){

  final video = ModalRoute.of(context).settings.arguments;
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
          print('Player is ready.');
       },
    );
}
}  
