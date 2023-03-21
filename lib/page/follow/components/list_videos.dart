import 'package:flutter/material.dart';
import 'package:video_box/video.controller.dart';
import 'package:video_box/video_box.dart';
import 'package:video_player/video_player.dart';

class List_Videos extends StatefulWidget {
  static String routeName="/videos";
  @override
  _ListVideoState createState() => _ListVideoState();
}

class _ListVideoState extends State<List_Videos> {
  List<VideoController> vcs = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 1; i++) {
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/lacnhaucophaimuondoi.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/haydeemquen.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/comottinhyeugoilachiatay.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/thang4laloinoidoicuaem.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/audios/emdongy.mp3"))
        ..initialize());
    }
  }

  @override
  void dispose() {
    for (var vc in vcs) {
      vc.dispose();
    }
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: <Widget>[
          for (var vc in vcs)
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: AspectRatio(
                aspectRatio: 9 / 18,
                child: VideoBox(controller: vc),
              ),
            ),
        ],
      ),
    );
  }
}