import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final String? image;
  final String? name;
  const CategoryCard({super.key, this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          width: 50.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff17273A),
          ),
          child: Center(
            child: Image.asset(image ?? '', height: 20.h, width: 20.w),
          ),
        ),
        Text(name ?? '', style: AppStyles.size12w400()),
      ],
    );
  }
}