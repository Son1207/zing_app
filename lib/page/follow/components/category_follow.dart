import 'package:flutter/material.dart';

class category_follow extends StatelessWidget {
  const category_follow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            margin: EdgeInsets.only(top: 0),
            padding: EdgeInsets.fromLTRB(10,10,20,10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Color.fromRGBO(234, 234, 234, 1.0),
            ),

            child: Row(
                children: [
                  Icon(Icons.multitrack_audio_rounded,color: Colors.purple,),
                  SizedBox(width: 10,),
                  Text('Khám phá',
                    style: TextStyle(
                        color: Colors.black, fontSize: 12),
                  ),
                ]

            )
        ),
        Container(
            margin: EdgeInsets.only(top: 0),
            padding: EdgeInsets.fromLTRB(10,10,20,10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Color.fromRGBO(234, 234, 234, 1.0),
            ),

            child: Row(
                children: [
                  Icon(Icons.video_collection,color: Colors.blueAccent,),
                  SizedBox(width: 10,),
                  Text('Video',
                    style: TextStyle(
                        color: Colors.black, fontSize: 12),
                  ),
                ]

            )
        ),
        Container(
            margin: EdgeInsets.only(top: 0),
            padding: EdgeInsets.fromLTRB(10,10,20,10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Color.fromRGBO(234, 234, 234, 1.0),
            ),

            child: Row(
                children: [
                  Icon(Icons.mic_external_on,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text('Karaoke',
                    style: TextStyle(
                        color: Colors.black, fontSize: 12),
                  ),
                ]

            )
        ),
      ],
    );
  }
}