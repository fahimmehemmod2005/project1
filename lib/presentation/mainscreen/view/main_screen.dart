import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/chat/view/message_screen.dart';
import 'package:flutter_application_1/presentation/home/view/home_screen.dart';
import 'package:flutter_application_1/presentation/profile/view/profile_screen.dart';
import 'package:flutter_application_1/presentation/search_profile/view/search_profile.dart';
import 'package:flutter_application_1/presentation/video/view/video_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const VideoScreen(),
    const Center(
      child: Text('Shop', style: TextStyle(color: Colors.white)),
    ),
    const MessageScreen(),
    const SearchProfile(),
    const ProfileScreen(),
  ];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 500, sigmaY: 500),
            child: Container(
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _navItem(CupertinoIcons.home, 0),
                  _navItem(CupertinoIcons.videocam_circle_fill, 1),
                  _navItem(CupertinoIcons.shopping_cart, 2),
                  _navItem(CupertinoIcons.chat_bubble, 3),
                  _navItem(CupertinoIcons.search, 4),
                  _navItem(CupertinoIcons.profile_circled, 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, int index) {
    final isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => changeIndex(index),
      child: AnimatedContainer(
        width: 45.h,
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.r),
          color: isActive
              ? CupertinoColors.systemPurple.withOpacity(0.18)
              : Colors.transparent,
        ),
        child: Icon(
          icon,
          size: 25,
          color: isActive
              ? CupertinoColors.systemPurple
              : Colors.white.withOpacity(0.7),
        ),
      ),
    );
  }
}
