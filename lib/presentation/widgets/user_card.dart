import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? buttonTitle;
  final void Function()? onPressed;
  final void Function()? viewProfielOnTap;
  final bool showBadge;
  const UserCard({
    super.key,
    this.image,
    this.title,
    this.subtitle,
    this.onPressed,
    this.buttonTitle,
    this.viewProfielOnTap, 
    this.showBadge = true, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey.withAlpha(30),
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: ListTile(
        leading: Stack(
          children: [
            Container(
              height: 50.h,
              width: 50.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(image ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          ],
        ),
        title: Row(
          children: [
            Flexible(
              child: Text(
                title ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.size14w400(),
              ),
            ),
            5.horizontalSpace,
            if(showBadge)
            Flexible(child: Image.asset(AppIcons.blueCheck,height: 15.0.h,width: 15.0.w,))
          ],
        ),
        subtitle: Text(
          subtitle ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.size12w400(color: CupertinoColors.systemGrey),
        ),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(40, 30),
            backgroundColor: CupertinoColors.systemPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0.r),
            ),
          ),
          onPressed: onPressed,
          child: Text(buttonTitle ?? '', style: AppStyles.size12w400()),
        ),
        onTap: viewProfielOnTap,
      ),
    );
  }
}
