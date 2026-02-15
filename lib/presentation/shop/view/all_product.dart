import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
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
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15.w,
                          crossAxisSpacing: 15.w,
                          childAspectRatio: 0.56,
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
                          mainAxisSpacing: 15.w,
                          crossAxisSpacing: 15.w,
                          childAspectRatio: 0.56,
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
      endDrawer: SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Drawer(
            backgroundColor: Colors.white.withAlpha(30),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.white.withAlpha(30),
                    ),
                    child: ListTile(
                      trailing: Icon(
                        CupertinoIcons.cart_fill,
                        color: Colors.white,
                      ),
                      title: Text('Store', style: AppStyles.size12w400()),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, Routes.storeScreen);
                      },
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.white.withAlpha(30),
                    ),
                    child: ListTile(
                      title: Text('Orders', style: AppStyles.size12w400()),
                      trailing: Icon(Icons.shopping_bag_outlined),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.orderScreen);
                      },
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.white.withAlpha(30),
                    ),
                    child: ListTile(
                      title: Text(
                        'Pending Product',
                        style: AppStyles.size12w400(),
                      ),
                      trailing: Icon(Icons.alarm),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.pendingProduct);
                      },
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.white.withAlpha(30),
                    ),
                    child: ListTile(
                      title: Text(
                        'Complete Delevery',
                        style: AppStyles.size12w400(),
                      ),
                      trailing: Icon(Icons.download_done_rounded),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.completeDelevery);
                      },
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.white.withAlpha(30),
                    ),
                    child: ListTile(
                      title: Text('Deshboard', style: AppStyles.size12w400()),
                      trailing: Icon(Icons.dashboard),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.shopDeshboard);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
