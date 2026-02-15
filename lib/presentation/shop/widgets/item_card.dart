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
        onTap: () {
          Navigator.pushNamed(context, Routes.productView);
        },
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white.withOpacity(.1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 130.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff20272C),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Image.asset(image ?? ''),
                  ),
                  5.verticalSpace,
                  Text(
                    'blue winter shirt',
                    style: AppStyles.size14w600(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text('Nike', style: AppStyles.size12w400()),
                      5.horizontalSpace,
                      Image.asset(
                        AppIcons.blueCheck,
                        height: 10.h,
                        width: 10.w,
                      ),
                    ],
                  ),
                  5.verticalSpace,
                  Text('\$300', style: AppStyles.size16w400()),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.orderReview);
                          },
                          child: Container(
                            height: 37.h,
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.white.withAlpha(30),
                              borderRadius: BorderRadius.circular(5.0.r),
                            ),
                            child: Center(
                              child: Text('Buy', style: AppStyles.size12w400()),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: const Color(0xff20272C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.shopping_cart,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.heart,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
