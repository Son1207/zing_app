import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class List_Videos extends StatefulWidget{
  static String routeName="/videos";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<List_Videos> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('assets/videos/lacnhaucophaimuondoi.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          child: Column(
              children:[
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),


                Container(
                    child: VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors:VideoProgressColors(
                          playedColor: Colors.redAccent,
                        )
                    )
                ),

                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){
                            if(controller.value.isPlaying){
                              controller.pause();
                            }else{
                              controller.play();
                            }
                            setState(() {
                            });
                          },
                          icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow)
                      ),

                      IconButton(
                          onPressed: (){
                            controller.seekTo(Duration(seconds: 0));
                            setState(() {
                            });
                          },
                          icon:Icon(Icons.stop)
                      )
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}