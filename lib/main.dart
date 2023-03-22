import 'package:flutter/material.dart';
import 'package:zing_app/modules/home_page.dart';
import 'package:zing_app/page/detail_account.dart';
import 'package:zing_app/page/detail_notification.dart';
import 'package:zing_app/page/follow/components/comment_posts.dart';
import 'package:zing_app/page/follow/components/list_videos.dart';
import 'package:zing_app/page/follow/components/list_news_video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        Home.routeName:(context) => Home(),
        List_Videos.routeName:(context) => List_Videos(),
        Comment_Posts.routeName:(context) => Comment_Posts(),
        List_News_Video.routeName:(context) => List_News_Video(),
        Detail_Account.routeName:(context) => Detail_Account(),
        detail_notification.routeName:(context) => detail_notification(),
      },
      theme: ThemeData(
        // scaffoldBackgroundColor: const Color(0xff131e30),
          textTheme: Theme.of(context)
              .textTheme
      ),
      title: '',
      home: Home(),
    );
  }
}



