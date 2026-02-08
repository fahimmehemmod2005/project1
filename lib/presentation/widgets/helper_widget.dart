import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelperWidget extends StatelessWidget {
  final Widget? child;
  const HelperWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: child,
      ),
    );
  }
}