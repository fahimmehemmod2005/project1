import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subTitle;
  final String? date;
  final void Function()? onTap;
  final void Function()? onLongTap;
  final bool showBadge;
  const ChatCard({
    super.key,
    this.image,
    this.title,
    this.subTitle,
    this.date,
    this.onTap,
    this.onLongTap, this.showBadge = true,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongTap,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(title ?? '', style: AppStyles.size14w400()),
                        5.horizontalSpace,
                        if(showBadge)
                Image.asset(
                  AppIcons.blueCheck,
                  height: 15.h,
                  width: 15.w,
                ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(subTitle ?? '', style: AppStyles.size12w400()),
                          Text(date ?? '', style: AppStyles.size12w400()),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}