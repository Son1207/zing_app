import 'package:flutter/material.dart';
import 'package:video_box/video.controller.dart';
import 'package:video_box/video_box.dart';
import 'package:video_player/video_player.dart';

class List_News_Video extends StatefulWidget {
  static String routeName="/news_video";
  @override
  List_News_VideoState createState() => List_News_VideoState();
}

class List_News_VideoState extends State<List_News_Video> {
  List<VideoController> vcs = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 1; i++) {
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/new_video.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/new_video1.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/new_video2.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/new_video3.mp4"))
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