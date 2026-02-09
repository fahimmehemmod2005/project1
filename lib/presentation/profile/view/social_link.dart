import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLink extends StatefulWidget {
  const SocialLink({super.key});

  @override
  State<SocialLink> createState() => _SocialLinkState();
}

class _SocialLinkState extends State<SocialLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Icon(Icons.check),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          10.horizontalSpace,
        ],
        title: Text('Social Share', style: AppStyles.size16w600()),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            TextInputField(mainLabel: 'URL'),
            10.verticalSpace,
            TextInputField(mainLabel: 'Title'),
          ],
        ),
      ),
    );
  }
}
