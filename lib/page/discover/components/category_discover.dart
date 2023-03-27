import 'package:flutter/material.dart';

class category_discover extends StatelessWidget {
  const category_discover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB( 16, 20, 16, 0),
      child: Container(
        height: 80.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue,
                  ),
                  child: const Icon(Icons.music_note,color: Colors.white,size: 30,),
                ),
                const SizedBox(height: 10,),
                const Text("Nhạc mới"),

              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.orange,
                  ),
                  child:const Icon(Icons.apps_outage_sharp,color: Colors.white,size: 30,),
                ),
                const SizedBox(height: 10,),
                const Text("Thể loại"),

              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.purple,
                  ),
                  child: const Icon(Icons.star,color: Colors.white,size: 30,),
                ),
                const SizedBox(height: 10,),
                const Text("Top 100"),

              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.green,
                  ),
                  child:const Icon(Icons.podcasts,color: Colors.white,size: 30,),
                ),
                const SizedBox(height: 10,),
                const Text("Podcast"),

              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  child:const Icon(Icons.mic_external_on,color: Colors.white,size: 30,),
                ),
                const SizedBox(height: 10,),
                const Text("Karaoke"),

              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.purpleAccent,
                  ),
                  child: const Icon(Icons.video_camera_back_rounded,color: Colors.white,size: 30,),
                ),
                const SizedBox(height: 10,),
                const Text("Top MV"),

              ],
            ),

            const SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueAccent,
                  ),
                  child: const Icon(Icons.calendar_month,color: Colors.white,size: 30,),
                ),
                const SizedBox(height: 10,),
                const Text("Sự kiện"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}