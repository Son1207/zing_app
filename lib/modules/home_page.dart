import 'package:flutter/material.dart';
import 'package:zing_app/page/discover/discover_page.dart';
import 'package:zing_app/page/follow/follow_page.dart';
import 'package:zing_app/page/personal/personal_page.dart';
import 'package:zing_app/page/radio/radio_page.dart';
import 'package:zing_app/page/zingchart/zingchat_page.dart';

class Home extends StatefulWidget {
  static String routeName = "/home_page";
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final screens = const [
    PersonalPage(),
    DiscoverPage(),
    ZingChartPage(),
    RadioPage(),
    FollowPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        child: NavigationBar(
          height: 70,
          backgroundColor: const Color(0xFFf1f5fb),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          animationDuration: const Duration(seconds: 2),
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.library_music_outlined),
              selectedIcon: Icon(Icons.library_music),
              label: 'Cá nhân',
            ),
            NavigationDestination(
              icon: Icon(Icons.quiz_outlined),
              selectedIcon: Icon(Icons.quiz),
              label: 'Khám phá',
            ),
            NavigationDestination(
              icon: Icon(Icons.insert_chart_outlined_rounded),
              selectedIcon: Icon(Icons.insert_chart_rounded),
              label: '#zingchart',
            ),
            NavigationDestination(
              icon: Icon(Icons.radio_outlined),
              selectedIcon: Icon(Icons.radio_rounded),
              label: 'Radio',
            ),
            NavigationDestination(
              icon: Icon(Icons.ballot_outlined),
              selectedIcon: Icon(Icons.ballot),
              label: 'Theo dõi',
            ),
          ],
        ),
      ),
    );
  }
}
