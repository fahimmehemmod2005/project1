import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_model_bottom_sheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

class SocialLinksButton extends StatelessWidget {
  const SocialLinksButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        'Social Links...',
        style: AppStyles.size12w400(
          color: CupertinoColors.systemPurple,
        ),
      ),
      onTap: () {
        showWhiteModelBottomSheet(
          context: context,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 3,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0.r),
                  color: CupertinoColors.white,
                ),
              ),
              10.verticalSpace,
              Card(
                child: ListTile(
                  leading: Image.asset(
                    AppIcons.youtube,
                    height: 20.h,
                    width: 20.w,
                  ),
                  title: Text('Youtube'),
                  trailing: Icon(
                    CupertinoIcons.arrow_right_circle_fill,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset(
                    AppIcons.instagram,
                    height: 20.h,
                    width: 20.w,
                  ),
                  title: Text('Instagram'),
                  trailing: Icon(
                    CupertinoIcons.arrow_right_circle_fill,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset(
                    AppIcons.tiktok,
                    height: 20.h,
                    width: 20.w,
                  ),
                  title: Text('Tiktok'),
                  trailing: Icon(
                    CupertinoIcons.arrow_right_circle_fill,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}