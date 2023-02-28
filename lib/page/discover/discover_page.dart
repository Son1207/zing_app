import 'package:flutter/material.dart';
import 'package:zing_app/page/discover/components/category_discover.dart';
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
      body: Padding(
        padding: EdgeInsets.fromLTRB( 16, 40, 16, 0),
        child: Column(
          children:const [
            search(),
            slide_show(),

            SizedBox(height: 20),
            category_discover(),
          ],
        ),
      ),
    );
  }
}

