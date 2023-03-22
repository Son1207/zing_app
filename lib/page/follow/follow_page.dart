import 'package:flutter/material.dart';
import 'package:zing_app/page/follow/components/category_follow.dart';
import 'package:zing_app/page/follow/components/list_posts.dart';
import 'package:zing_app/page/follow/components/list_videos.dart';
import 'package:zing_app/page/follow/components/new_videos.dart';
import 'package:zing_app/page/search.dart';

class follow_page extends StatelessWidget {
  const follow_page({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB( 0, 40, 0, 0),
          child: Column(
            children:const [
              search(),
              category_follow(),
              new_videos(),
              list_posts(),
            ],
          ),
        ),
      ),
    );
  }
}



