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
          padding: const EdgeInsets.fromLTRB( 0, 40, 0, 0),
          child: Column(
            children: [
              const search(),
              const slide_show(),
              const category_discover(),

              const Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text("Nghe gần đây",style: TextStyle(fontSize: 20)),
                ),
              ),
              const recently_discover(),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
                child: Row(
                  children:const [
                    Text("Có thể bạn muốn nghe",style: TextStyle(fontSize: 20),),
                    Icon(Icons.navigate_next,size: 25,),
                  ],
                ),
              ),
              const listen_discover(),
            ],
          ),
        ),
      )
    );
  }
}

