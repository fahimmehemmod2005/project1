import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OrderDetailsCard extends StatelessWidget {
  final String? status;
  final Color? fontColor;
  const OrderDetailsCard({
    super.key, 
    this.status, 
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(30),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order #CRP123456", style: AppStyles.size14w600()),
              Text(
                "2h ago",
                style: AppStyles.size12w400().copyWith(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
    
          12.verticalSpace,
          Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white24),
                  image: DecorationImage(
                    image: AssetImage(AppImages.user1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: Row(
                  children: [
                    Text('Sarah Miller', style: AppStyles.size14w600()),
                    5.horizontalSpace,
                    Image.asset(AppIcons.blueCheck, height: 12.h),
                  ],
                ),
              ),
    
              /// Status Badge
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 5.h,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.activeGreen,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  "Active",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
    
          15.verticalSpace,
    
          Row(
            children: [
              Container(
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: AssetImage(AppImages.shirtRed),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              12.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Limited Edition Hoodie',
                      style: AppStyles.size16w600(),
                    ),
                    6.verticalSpace,
                    Text(
                      'Size: L  •  Color: Red  •  Qty: 1',
                      style: AppStyles.size12w400().copyWith(
                        color: Colors.white70,
                      ),
                    ),
                    8.verticalSpace,
                    Row(
                      children: [
                        Text('\$1500', style: AppStyles.size16w600()),
                        10.horizontalSpace,
                        Text('-'),
                        10.horizontalSpace,
                        Text(
                          status??'',
                          style: AppStyles.size14w400(color: fontColor ?? Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
