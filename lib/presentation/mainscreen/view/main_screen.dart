import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/profile/view/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final screens = [
    SizedBox(
      child: const Center(
        child: Text('Home', style: TextStyle(color: Colors.white)),
      ),
    ),
    SizedBox(
      child: const Center(
        child: Text('Video', style: TextStyle(color: Colors.white)),
      ),
    ),
    SizedBox(
      child: const Center(
        child: Text('Message', style: TextStyle(color: Colors.white)),
      ),
    ),
    SizedBox(
      child: const Center(
        child: Text('Search', style: TextStyle(color: Colors.white)),
      ),
    ),
    const ProfileScreen()
  ];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 60.h,
          padding:  EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: CupertinoColors.systemGrey.withAlpha(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem(CupertinoIcons.home, "Home", 0),
              _navItem(CupertinoIcons.video_camera, "Video", 1),
              _navItem(CupertinoIcons.chat_bubble, "Message", 2),
              _navItem(CupertinoIcons.search, "Search", 3),
              _navItem(CupertinoIcons.profile_circled, "Profile", 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    final isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => changeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? CupertinoColors.activeOrange : CupertinoColors.systemGrey,
            size: isActive ? 35 : 30,
          ),
        ],
      ),
    );
  }
}
