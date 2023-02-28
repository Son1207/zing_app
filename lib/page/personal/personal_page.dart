import 'package:flutter/material.dart';
import 'package:zing_app/page/personal/components/category_personal.dart';
import 'package:zing_app/page/search.dart';

class personal_page extends StatelessWidget {
  const personal_page({super.key});

  @override
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
            Align(
              alignment:Alignment.topLeft,
              child: Text("Thư viện",style: TextStyle(fontSize: 30)),
            ),

            SizedBox(height: 20),
            category_personal(),
          ],
        ),
      ),
    );
  }
}


