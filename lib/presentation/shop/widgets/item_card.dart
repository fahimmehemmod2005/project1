import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  final String? image;
  const ItemCard({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(18.r),
        onTap: () {
          Navigator.pushNamed(context, Routes.productView);
        },
        child: Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white.withAlpha(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff20272C),
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                    child: Image.asset(image ?? '', fit: BoxFit.cover),
                  ),

                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      height: 32.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.4),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemRed,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        "-20%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              Text(
                'Blue Winter Shirt',
                style: AppStyles.size14w600(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Text(
                    'Nike',
                    style: AppStyles.size12w400().copyWith(
                      color: Colors.white70,
                    ),
                  ),
                  5.horizontalSpace,
                  Image.asset(AppIcons.blueCheck, height: 12.h),
                ],
              ),
              Row(
                children: [
                  Text('\$240', style: AppStyles.size16w600()),
                  6.horizontalSpace,
                  Text(
                    '\$300',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.white54,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Colors.white.withOpacity(.1),
                      ),
                      child: Center(
                        child: Text("Buy Now", style: AppStyles.size12w400()),
                      ),
                    ),
                  ),
                  8.horizontalSpace,
                  Container(
                    height: 38.h,
                    width: 38.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: CupertinoColors.systemPurple,
                    ),
                    child: const Icon(
                      CupertinoIcons.shopping_cart,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
