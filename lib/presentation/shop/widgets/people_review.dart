import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PeopleReview extends StatelessWidget {
  final String? name;
  final String? comment;
  final String? email;
  final String? ratings;
  final String? users;
  const PeopleReview({
    super.key,
     this.name,
     this.comment,
     this.email,
     this.ratings,
     this.users,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(child: Image.asset(users ?? '')),
            SizedBox(width: 10.w),
            Text(name ?? '', style: AppStyles.size12w400(color: Colors.white)),
            Spacer(),
            Icon(Icons.star, color: Colors.orange),
            Icon(Icons.star, color: Colors.orange),
            Icon(Icons.star, color: Colors.orange),
            Icon(Icons.star, color: Colors.orange),
            Icon(Icons.star, color: Colors.orange),
            SizedBox(width: 5.w),
            Text(
              ratings ?? '',
              style: AppStyles.size12w400(color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          comment ?? '',
          style: AppStyles.size16w400(color: Color(0xff777980)),
        ),
        Text(
          email ?? '',
          style: AppStyles.size16w400(color: Color(0xff777980)),
        ),
      ],
    );
  }
}