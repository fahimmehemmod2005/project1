import 'package:flutter/cupertino.dart' show CupertinoColors;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestedCreatorCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? bio;
  final String? buttonTitle;
    final void Function()? onPressed;
  final void Function()? viewProfielOnTap;
  const SuggestedCreatorCard({
    super.key, this.image, this.name, this.bio, this.buttonTitle, this.onPressed, this.viewProfielOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 130.w,
        padding: EdgeInsets.all(10.0.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.r ),
           color: const Color.fromARGB(255, 65, 65, 141).withAlpha(40),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 60.0.h,
                  width: 60.0.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(image ?? ''))
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(AppIcons.blueCheck,height: 20.0.h,width: 20.0.w,))
              ],
            ),
            5.verticalSpace,
            Text(name??'',style: AppStyles.size14w600(),textAlign: TextAlign.center,maxLines: 1,overflow: TextOverflow.ellipsis,),
            Text(bio??'',style: AppStyles.size12w400(),textAlign: TextAlign.center,maxLines: 1,overflow: TextOverflow.ellipsis,),
            ElevatedButton(
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
          ],
        ),
      ),
      onTap: viewProfielOnTap,
    );
  }
}