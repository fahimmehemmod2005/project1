import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelperWidget extends StatelessWidget {
  final Widget? child;
  const HelperWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF1a1625), // Dark purple-black
            Color(0xFF0d0a15), // Deep black
            Color(0xFF1e1433), // Dark purple
            Color(0xFF0a0812), // Very dark black
          ],
          stops: [0.0, 0.3, 0.7, 1.0],
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: child,
        ),
      ),
    );
  }
}