import 'package:flutter/material.dart';
import 'package:zing_app/page/follow/components/list_videos.dart';


class CategoryFollow extends StatelessWidget {
  const CategoryFollow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB( 16, 10, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            onPressed:(){},
            icon: const Icon(Icons.multitrack_audio_rounded,color: Colors.purple,),
            label: const Text('Khám phá',style: TextStyle(color: Colors.black, fontSize: 12),),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: (){Navigator.pushNamed(context, ListVideos.routeName);},
            icon: const Icon(Icons.video_collection,color: Colors.blueAccent,),
            label: const Text('Video',style: TextStyle(color: Colors.black, fontSize: 12),),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed:(){},
            icon: const Icon(Icons.mic_external_on,color: Colors.red,),
            label: const Text('Karaoke',style: TextStyle(color: Colors.black, fontSize: 12),),
          ),

        ],
      ),
    );
  }
}