import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constansts/app_icons.dart';

class OnlineCard extends StatelessWidget {
  final String? image;
  final String? name;
  final void Function()? onTap;

  const OnlineCard({super.key, this.image, this.name, this.onTap});

  @override
Widget build(BuildContext context) {
  return CupertinoContextMenu(
    actions: [
      CupertinoContextMenuAction(
        trailingIcon: CupertinoIcons.profile_circled,
        child: Text('Profile', style: AppStyles.size12w400()),
        onPressed: () {
          Navigator.pop(context); // close menu
          Navigator.pushNamed(context, Routes.searchUserProfile);
        },
      ),
      CupertinoContextMenuAction(
        trailingIcon: CupertinoIcons.chat_bubble,
        child: Text('Message', style: AppStyles.size12w400()),
        onPressed: () {
          Navigator.pop(context); // close menu
          Navigator.pushNamed(context, Routes.chatRoute);
        },
      ),
      CupertinoContextMenuAction(
        isDestructiveAction: true,
        trailingIcon: CupertinoIcons.delete,
        child: Text('Remove', style: AppStyles.size12w400()),
        onPressed: () {
        },
      ),
    ],
    child: Material(
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
                    image: image != null && image!.isNotEmpty
                        ? DecorationImage(
                            image: AssetImage(image!),
                            fit: BoxFit.cover,
                          )
                        : null,
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
            Text(
              name ?? '',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    ),
  );
}
}
