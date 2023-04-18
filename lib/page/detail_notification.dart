import 'package:flutter/material.dart';
import 'package:zing_app/modules/home_page.dart';

// ignore: camel_case_types
class DetailNotification extends StatelessWidget {
  static String routeName="/detail_notification";
  const DetailNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment:Alignment.topLeft,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black, // text + icon color
                    ),
                    icon: const Icon(Icons.arrow_back_ios_outlined),
                    label:const Text('',),
                    onPressed: (){Navigator.pushNamed(context,Home.routeName);},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(80,12,0,0),
                  child: Align(
                    alignment:Alignment.topCenter,
                    child: Text("Thông báo",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset("assets/images/notification.png"),
            )
          ],
        ),
      ),
    );
  }
}
