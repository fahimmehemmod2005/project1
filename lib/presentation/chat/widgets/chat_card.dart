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
  const ChatCard({
    super.key,
    this.image,
    this.title,
    this.subTitle,
    this.date,
    this.onTap,
    this.onLongTap,
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
                Stack(
                  clipBehavior: Clip.none,
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
                    Positioned(
                      bottom: -3,
                      right: -3,
                      child: Image.asset(
                        AppIcons.blueCheck,
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                  ],
                ),
                10.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title ?? '', style: AppStyles.size14w400()),
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