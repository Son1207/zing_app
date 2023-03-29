import 'package:flutter/material.dart';
import 'package:zing_app/modules/home_page.dart';
import 'package:zing_app/page/detail_account.dart';
import 'package:zing_app/page/detail_notification.dart';
import 'package:zing_app/page/follow/components/comment_posts.dart';
import 'package:zing_app/page/follow/components/list_new_video/list_new_videos1.dart';
import 'package:zing_app/page/follow/components/list_new_video/list_new_videos2.dart';
import 'package:zing_app/page/follow/components/list_new_video/list_new_videos3.dart';
import 'package:zing_app/page/follow/components/list_videos.dart';
import 'package:zing_app/page/follow/components/list_news_video.dart';
import 'package:zing_app/page/follow/follow_page.dart';

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
        Home.routeName:(context) => const Home(),
        follow_page.routeName:(context) => const follow_page(),
        List_Videos.routeName:(context) => const List_Videos(),
        Comment_Posts.routeName:(context) => const Comment_Posts(),
        List_News_Video.routeName:(context) => const List_News_Video(),
        List_News_Video1.routeName:(context) => const List_News_Video1(),
        List_News_Video2.routeName:(context) => const List_News_Video2(),
        List_News_Video3.routeName:(context) => const List_News_Video3(),
        Detail_Account.routeName:(context) => const Detail_Account(),
        detail_notification.routeName:(context) => const detail_notification(),
      },
      theme: ThemeData(
        // scaffoldBackgroundColor: const Color(0xff131e30),
          textTheme: Theme.of(context)
              .textTheme
      ),
      title: '',
      home: const Home(),
    );
  }
}



