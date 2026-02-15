import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/shop/widgets/top_category_part.dart';
import 'package:flutter_application_1/presentation/shop/widgets/item_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF1a1625), // Dark purple-black
                  Color(0xFF0d0a15), // Deep black
                  Color(0xFF1e1433), // Dark purple
                  Color(0xFF0a0812), // Very dark black
                ],
                stops: [0.0, 0.3, 0.7, 1.0],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TopCategoryPart(),

                40.verticalSpace,

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 170.h,
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          separatorBuilder: (_, __) => 10.horizontalSpace,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                image: DecorationImage(
                                  image: AssetImage(AppImages.shopBanner),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      10.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Popular', style: AppStyles.size14w400()),
                          Text('View all', style: AppStyles.size14w400()),
                        ],
                      ),
                      10.verticalSpace,
                      GridView.builder(
                        shrinkWrap: true,
                        physics:
                            const NeverScrollableScrollPhysics(), // parent scroll handle করবে
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.w,
                          crossAxisSpacing: 10.w,
                          childAspectRatio: 0.6
                        ),
                        itemBuilder: (context, index) {
                          return ItemCard(image: AppImages.shirtRed);
                        },
                      ),
                      10.verticalSpace,
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.w,
                          crossAxisSpacing: 10.w,
                          childAspectRatio: 0.6,
                        ),
                        itemBuilder: (context, index) {
                          return ItemCard(image: AppImages.shirt);
                        },
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
