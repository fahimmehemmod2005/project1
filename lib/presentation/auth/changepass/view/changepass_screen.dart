import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangepassScreen extends StatefulWidget {
  const ChangepassScreen({super.key});

  @override
  State<ChangepassScreen> createState() => _ChangepassScreenState();
}

class _ChangepassScreenState extends State<ChangepassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Reset Password', style: AppStyles.size20w600()),
      ),
      body: HelperWidget(),
    );
  }
}

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
