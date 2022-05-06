import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeScreen extends StatefulWidget {
  const YoutubeScreen({Key? key,required this.title}) : super(key: key);
  final String title;
  //final url;

  @override
  State<YoutubeScreen> createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  late YoutubePlayerController _controller;

  void runYoutubePlayer(){
    _controller = YoutubePlayerController(
        initialVideoId: 'JLusD8ENg5E',
        flags: YoutubePlayerFlags(
        enableCaption: false,
        isLive: false,
        autoPlay: false,

      )
    );
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }
  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player){
          return Column(
            children: [
              player,
            ],
          );
        }
    );
  }
}


