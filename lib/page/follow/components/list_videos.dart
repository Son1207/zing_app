import 'package:flutter/material.dart';
import 'package:video_box/video_box.dart';

class ListVideos extends StatefulWidget {
  static String routeName="/list_videos";

  const ListVideos({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _ListVideoState createState() => _ListVideoState();
}

class _ListVideoState extends State<ListVideos> {
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
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.black,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: <Widget>[
          for (var vc in vcs)
            VideoBox(controller: vc),
        ],
      ),
    );
  }
}