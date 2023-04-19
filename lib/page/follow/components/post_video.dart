import 'package:flutter/material.dart';
import 'package:video_box/video_box.dart';

class PostVideo extends StatefulWidget {
  final String videoUrl;

  const PostVideo({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _PostVideoState createState() => _PostVideoState();
}

class _PostVideoState extends State<PostVideo> {
  late VideoController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoController(source: VideoPlayerController.asset("assets/videos/thang4laloinoidoicuaem.mp4"))
      ..initialize().then((_) {
        _videoController.play();
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: VideoBox(controller: _videoController),
      ),
    );
  }
}
