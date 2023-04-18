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
        FollowPage.routeName:(context) => const FollowPage(),
        ListVideos.routeName:(context) => const ListVideos(),
        CommentPosts.routeName:(context) => const CommentPosts(),
        ListNewsVideo.routeName:(context) => const ListNewsVideo(),
        ListNewsVideo1.routeName:(context) => const ListNewsVideo1(),
        ListNewsVideo2.routeName:(context) => const ListNewsVideo2(),
        ListNewsVideo3.routeName:(context) => const ListNewsVideo3(),
        DetailAccount.routeName:(context) => const DetailAccount(),
        DetailNotification.routeName:(context) => const DetailNotification(),
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



