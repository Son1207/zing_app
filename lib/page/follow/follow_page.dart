import 'package:flutter/material.dart';
import 'package:zing_app/page/follow/components/category_follow.dart';
import 'package:zing_app/page/search.dart';

class follow_page extends StatelessWidget {
  const follow_page({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB( 16, 40, 16, 0),
        child: Column(
          children:const [

            search(),

            SizedBox(height: 20),
            category_follow(),
          ],
        ),
      ),
    );
  }
}



