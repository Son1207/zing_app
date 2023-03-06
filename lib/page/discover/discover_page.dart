import 'package:flutter/material.dart';
import 'package:zing_app/page/discover/components/category_discover.dart';
import 'package:zing_app/page/discover/components/listen_discover.dart';
import 'package:zing_app/page/discover/components/recently_discover.dart';
import 'package:zing_app/page/discover/components/slide_show.dart';
import 'package:zing_app/page/search.dart';

class discover_page extends StatefulWidget {
  const discover_page({super.key});

  @override
  State<discover_page> createState() => _discover_pageState();
}
class _discover_pageState extends State<discover_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB( 16, 40, 16, 0),
          child: Column(
            children: [
              search(),
              slide_show(),

              SizedBox(height: 20),
              category_discover(),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text("Nghe gần đây",style: TextStyle(fontSize: 20)),
                ),
              ),
              recently_discover(),

              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children:const [
                    Text("Có thể bạn muốn nghe",style: TextStyle(fontSize: 20),),
                    Icon(Icons.navigate_next,size: 25,),
                  ],
                ),
              ),

              SizedBox(height: 20),
              listen_discover(),
            ],
          ),
        ),
      )
    );
  }
}

