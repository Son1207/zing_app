import 'package:flutter/material.dart';
import 'package:zing_app/page/personal/components/category_personal.dart';
import 'package:zing_app/page/personal/components/playlist_personal.dart';
import 'package:zing_app/page/personal/components/recently_personal.dart';
import 'package:zing_app/page/search.dart';

class personal_page extends StatelessWidget {
  const personal_page({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB( 16, 40, 16, 0),
          child: Column(
            children: [
              search(),

              SizedBox(height: 20),
              Align(
                alignment:Alignment.topLeft,
                child: Text("Thư viện",style: TextStyle(fontSize: 25)),
              ),

              SizedBox(height: 20),
              category_personal(),

              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children:const [
                    Text("Nghe gần đây",style: TextStyle(fontSize: 20),),
                    Icon(Icons.navigate_next,size: 30,),
                  ],
                ),
              ),

              recently_personal(),

              Padding(
                padding: EdgeInsets.only(top: 30),
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
                          style: TextStyle(fontSize: 15,color: Color.fromRGBO(
                              90, 90, 90, 0.9)),)
                    ),

                  ],
                ),
              ),

              playlist_personal(),

            ],
          ),
        ),
      )

    );
  }
}




