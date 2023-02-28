import 'package:flutter/material.dart';

class category_discover extends StatelessWidget {
  const category_discover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue,
                  ),
                  child: Icon(Icons.music_note,color: Colors.white,size: 30,),
                ),
                SizedBox(height: 10,),
                Text("Nhạc mới"),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.orange,
                  ),
                  child: Icon(Icons.apps_outage_sharp,color: Colors.white,size: 30,),
                ),
                SizedBox(height: 10,),
                Text("Thể loại"),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.purple,
                  ),
                  child: Icon(Icons.star,color: Colors.white,size: 30,),
                ),
                SizedBox(height: 10,),
                Text("Top 100"),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.green,
                  ),
                  child: Icon(Icons.podcasts,color: Colors.white,size: 30,),
                ),
                SizedBox(height: 10,),
                Text("Podcast"),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                  ),
                  child: Icon(Icons.mic_external_on,color: Colors.white,size: 30,),
                ),
                SizedBox(height: 10,),
                Text("Karaoke"),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.purpleAccent,
                  ),
                  child: Icon(Icons.video_camera_back_rounded,color: Colors.white,size: 30,),
                ),
                SizedBox(height: 10,),
                Text("Top MV"),

              ],
            ),
          ),

          SizedBox(width: 15),
          Container(
            child: Column(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueAccent,
                  ),
                  child: Icon(Icons.calendar_month,color: Colors.white,size: 30,),
                ),
                SizedBox(height: 10,),
                Text("Sự kiện"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}