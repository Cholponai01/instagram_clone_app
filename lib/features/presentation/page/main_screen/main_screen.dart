import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_app/config/app_colors.dart';
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
      backgroundColor: AppColors.backGroundColor,
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: AppColors.backGroundColor,
          onTap: navigationTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded, color: AppColors.primaryColor),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: AppColors.primaryColor),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.add_circled_solid,
                    color: AppColors.primaryColor),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite, color: AppColors.primaryColor),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: AppColors.primaryColor),
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
