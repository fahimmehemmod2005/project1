import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(30),
        borderRadius: BorderRadius.circular(10.0.r),
        border: Border.all(color: CupertinoColors.systemPurple, width: 0.5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0.r),
                  image: DecorationImage(
                    image: AssetImage(AppImages.shirtRed),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Limited Edition Hoodie',
                      style: AppStyles.size16w600(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$999',
                          style: AppStyles.size14w400(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        5.horizontalSpace,
                        Container(
                          height: 8.h,
                          width: 8.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          'Stock: 45',
                          style: AppStyles.size14w400(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Status:',
                          style: AppStyles.size14w400(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        5.horizontalSpace,
                        Container(
                          height: 15.h,
                          width: 15.w,
                          decoration: BoxDecoration(
                            color: CupertinoColors.activeGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          'Active',
                          style: AppStyles.size14w400(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 15),
                        Text(
                          '4.7 (89)',
                          style: AppStyles.size14w400(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        5.horizontalSpace,
                        Container(
                          height: 8.h,
                          width: 8.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          'Sold: 178',
                          style: AppStyles.size14w400(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  label: 'View',
                  borderRadius: 5.0.r,
                  fontSize: 12.sp,
                  backgroundColor: CupertinoColors.activeOrange,
                  height: 35.h,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.productView);
                  },
                ),
              ),
              5.horizontalSpace,
              Expanded(
                child: PrimaryButton(
                  label: 'Edit',
                  borderRadius: 5.0.r,
                  fontSize: 12.sp,
                  height: 35.h,
                  onPressed: () {},
                ),
              ),
              5.horizontalSpace,
              Expanded(
                child: PrimaryButton(
                  label: 'Delete',
                  fontSize: 12.sp,
                  borderRadius: 5.0.r,
                  height: 35.h,
                  backgroundColor: CupertinoColors.systemRed,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
