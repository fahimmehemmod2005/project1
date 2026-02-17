import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constansts/app_icons.dart';

class OnlineCard extends StatelessWidget {
  final String? image;
  final String? name;
  final void Function()? onTap;

  const OnlineCard({super.key, this.image, this.name, this.onTap});

  @override
Widget build(BuildContext context) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                  color: Colors.grey.shade300,
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
          5.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name ?? '',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              2.horizontalSpace,
              Container(
                height: 5.h,
                width: 5.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CupertinoColors.activeGreen
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
}
