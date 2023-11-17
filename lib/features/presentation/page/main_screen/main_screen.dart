import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_app/consts.dart';
import 'package:instagram_clone_app/features/presentation/page/activity/activity_page.dart';
import 'package:instagram_clone_app/features/presentation/page/home/home_page.dart';
import 'package:instagram_clone_app/features/presentation/page/post/upload_post_page.dart';
import 'package:instagram_clone_app/features/presentation/page/profile/profile_page.dart';
import 'package:instagram_clone_app/features/presentation/page/search/serach_page.dart';

class MainScreen extends StatefulWidget {
  final String uid;
  const MainScreen({Key? key, required this.uid}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: backGroundColor,
          onTap: navigationTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded, color: primaryColor), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: primaryColor), label: ""),
            BottomNavigationBarItem(
                icon:
                    Icon(CupertinoIcons.add_circled_solid, color: primaryColor),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite, color: primaryColor), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: primaryColor),
                label: ""),
          ]),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomePage(),
          SearchPage(),
          PostPage(),
          ActivityPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
