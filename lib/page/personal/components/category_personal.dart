import 'package:flutter/material.dart';

class category_personal extends StatelessWidget {
  const category_personal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              margin: EdgeInsets.only(top: 0),
              width: 150.0,
              padding: const EdgeInsets.fromLTRB(10,10,20,10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(234, 234, 234, 1.0),
              ),

              child: Column(
                  children:const [
                    Icon(Icons.heart_broken,color: Colors.blue,size: 30,),
                    SizedBox(height: 14,),
                    Text('Bài hát yêu thích',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15),
                    ),
                    SizedBox(height: 7,),
                    Text('3'),
                  ]
              )
          ),

          const SizedBox(width: 15),
          Container(
              margin: const EdgeInsets.only(top: 0),
              width: 150.0,
              padding: const EdgeInsets.fromLTRB(10,10,20,10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(234, 234, 234, 1.0),
              ),

              child: Column(
                  children: const[
                    Icon(Icons.download_for_offline_rounded,color: Colors.purple,size: 30,),
                    SizedBox(height: 14,),
                    Text('Đã tải',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15),
                    ),
                    SizedBox(height: 7,),
                    Text('3'),
                  ]
              )
          ),

          const SizedBox(width: 15),
          Container(
              margin: const EdgeInsets.only(top: 0),
              width: 150.0,
              padding: const EdgeInsets.fromLTRB(10,10,20,10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(234, 234, 234, 1.0),
              ),

              child: Column(
                  children: const[
                    Icon(Icons.mic_external_on,color: Colors.red,size: 30,),
                    SizedBox(height: 14,),
                    Text('Karaoke',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15),
                    ),
                  ]
              )
          ),

          const SizedBox(width: 15),
          Container(
              margin: const EdgeInsets.only(top: 0),
              width: 150.0,
              padding: const EdgeInsets.fromLTRB(10,10,20,10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(234, 234, 234, 1.0),
              ),

              child: Column(
                  children: const[
                    Icon(Icons.personal_injury_outlined,color: Colors.orange,size: 30,),
                    SizedBox(height: 14,),
                    Text('Nghệ sĩ',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15),
                    ),
                  ]
              )
          ),

          const SizedBox(width: 15),
          Container(
              margin: EdgeInsets.only(top: 0),
              width: 150.0,
              padding: const EdgeInsets.fromLTRB(10,10,20,10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(234, 234, 234, 1.0),
              ),

              child: Column(
                  children: const[
                    Icon(Icons.podcasts,color: Colors.green,size: 30,),
                    SizedBox(height: 14,),
                    Text('Podcast',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15),
                    ),
                  ]
              )
          ),

          const SizedBox(width: 15),
          Container(
              margin: EdgeInsets.only(top: 0),
              width: 150.0,
              padding: const EdgeInsets.fromLTRB(10,10,20,10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(234, 234, 234, 1.0),
              ),

              child: Column(
                  children: const[
                    Icon(Icons.upload,color: Colors.orange,size: 30,),
                    SizedBox(height: 14,),
                    Text('Upload',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15),
                    ),
                  ]
              )
          ),

          const SizedBox(width: 15),
          Container(
              margin: const EdgeInsets.only(top: 0),
              width: 150.0,
              padding: const EdgeInsets.fromLTRB(10,10,20,10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(234, 234, 234, 1.0),
              ),

              child: Column(
                  children: const[
                    Icon(Icons.video_collection,color: Colors.blue,size: 30,),
                    SizedBox(height: 14,),
                    Text('MV',
                      style: TextStyle(
                          color: Colors.black, fontSize: 15),
                    ),
                  ]
              )
          ),
        ],

      ),

    );
  }
}