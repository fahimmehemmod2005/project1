import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/home/view/home_screen.dart';
import 'package:flutter_application_1/presentation/profile/view/profile_screen.dart';
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
      child: Text('Message', style: TextStyle(color: Colors.white)),
    ),
    const Center(
      child: Text('Search', style: TextStyle(color: Colors.white)),
    ),
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
          borderRadius: BorderRadius.circular(12.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 500, sigmaY: 500),
            child: Container(
              height: 65.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _navItem(CupertinoIcons.home, 0),
                  _navItem(CupertinoIcons.videocam_circle_fill, 1),
                  _navItem(CupertinoIcons.chat_bubble, 2),
                  _navItem(CupertinoIcons.search, 3),
                  _navItem(CupertinoIcons.profile_circled, 4),
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
        width: 65.h,
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: isActive
              ? CupertinoColors.systemPurple.withOpacity(0.18)
              : Colors.transparent,
        ),
        child: Icon(
          icon,
          size: 30,
          color: isActive
              ? CupertinoColors.systemPurple
              : Colors.white.withOpacity(0.7),
        ),
      ),
    );
  }
}
