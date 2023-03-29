import 'package:flutter/material.dart';
import 'package:zing_app/page/personal/components/category_personal.dart';
import 'package:zing_app/page/personal/components/playlist_personal.dart';
import 'package:zing_app/page/personal/components/recently_personal.dart';
import 'package:zing_app/page/search.dart';

// ignore: camel_case_types
class personal_page extends StatelessWidget {
  const personal_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB( 0, 40, 0, 0),
          child: Column(
            children: [
              const search(),

              const Padding(
                padding: EdgeInsets.fromLTRB( 16, 20, 16, 0),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text("Thư viện",style: TextStyle(fontSize: 25)),
                ),
              ),
              const category_personal(),

              Padding(
                padding: const EdgeInsets.fromLTRB( 16, 30, 16, 0),
                child: Row(
                  children:const [
                    Text("Nghe gần đây",style: TextStyle(fontSize: 20),),
                    Icon(Icons.navigate_next,size: 30,),
                  ],
                ),
              ),

              const recently_personal(),

              Padding(
                padding: const EdgeInsets.fromLTRB( 16, 30, 16, 0),
                child: Column(
                  children:const [
                    Align(
                      alignment:Alignment.topLeft,
                      child: Text("Playlist gợi ý",style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment:Alignment.topLeft,
                      child: Text("Đang được nghe nhiều",
                        style: TextStyle(fontSize: 15,color: Color.fromRGBO(90, 90, 90, 0.9)),),
                    ),

                  ],
                ),
              ),

              const playlist_personal(),

            ],
          ),
        ),
      )

    );
  }
}




