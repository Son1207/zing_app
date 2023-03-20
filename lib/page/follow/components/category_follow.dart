import 'package:flutter/material.dart';
import 'package:zing_app/page/follow/components/list_videos.dart';

class category_follow extends StatelessWidget {
  const category_follow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.white70, // Background color
          ),
          onPressed:(){},
          icon: Icon(Icons.multitrack_audio_rounded,color: Colors.purple,),
          label: Text('Khám phá',style: TextStyle(color: Colors.black, fontSize: 12),),
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.white70, // Background color
          ),
          onPressed: (){Navigator.pushNamed(context, List_Videos.routeName);},
          icon: Icon(Icons.video_collection,color: Colors.blueAccent,),
          label: Text('Video',style: TextStyle(color: Colors.black, fontSize: 12),),
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.white70, // Background color
          ),
          onPressed:(){},
          icon: Icon(Icons.mic_external_on,color: Colors.red,),
          label: Text('Karaoke',style: TextStyle(color: Colors.black, fontSize: 12),),
        ),
      ],
    );
  }
}