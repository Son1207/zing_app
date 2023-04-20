import 'package:flutter/material.dart';
import 'package:video_box/video_box.dart';

class ListNewsVideo3 extends StatefulWidget {
  static String routeName="/newvideos3";

  const ListNewsVideo3({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _ListNewsVideo3State createState() => _ListNewsVideo3State();
}

class _ListNewsVideo3State extends State<ListNewsVideo3> {
  List<VideoController> vcs = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 1; i++) {
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/new_video3.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/new_video.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/new_video1.mp4"))
        ..initialize());
      vcs.add(VideoController(source: VideoPlayerController.asset("assets/videos/new_video2.mp4"))
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
        toolbarHeight: 35,
        backgroundColor: Colors.black,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: <Widget>[
          for (var vc in vcs)
            VideoBox(controller: vc,bottomPadding: const EdgeInsets.only(bottom: 50.0), ),
        ],
      ),
    );
  }
}