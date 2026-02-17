import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/shop/widgets/product_card.dart';
import 'package:flutter_application_1/presentation/shop/widgets/store_status_bar.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStores extends StatefulWidget {
  const MyStores({super.key});

  @override
  State<MyStores> createState() => _MyStoresState();
}

class _MyStoresState extends State<MyStores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppImages.shopBanner),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            5.horizontalSpace,
            Text('Nikee', style: AppStyles.size14w600()),
            5.horizontalSpace,
            Image.asset(AppIcons.blueCheck, height: 10.h, width: 10.w),
          ],
        ),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                image: DecorationImage(
                  image: AssetImage(AppImages.onlineShoping),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            10.verticalSpace,
            Text('Store Overview', style: AppStyles.size14w600()),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('24', style: AppStyles.size16w700()),
                      Text('Products', style: AppStyles.size14w400()),
                      Text('Active', style: AppStyles.size14w400()),
                    ],
                  ),
                ),
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$24000', style: AppStyles.size16w700()),
                      Text('Sales', style: AppStyles.size14w400()),
                      Text('This Month', style: AppStyles.size14w400()),
                    ],
                  ),
                ),
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('165', style: AppStyles.size16w700()),
                      Text('Orders', style: AppStyles.size14w400()),
                      Text('Pending', style: AppStyles.size14w400()),
                    ],
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('24', style: AppStyles.size16w700()),
                      Text('Products', style: AppStyles.size14w400()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 15),
                          Icon(Icons.star, color: Colors.yellow, size: 15),
                          Icon(Icons.star, color: Colors.yellow, size: 15),
                          Icon(Icons.star, color: Colors.yellow, size: 15),
                          Icon(Icons.star, color: Colors.yellow, size: 15),
                        ],
                      ),
                    ],
                  ),
                ),
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('892', style: AppStyles.size16w700()),
                      Text('Reviews', style: AppStyles.size14w400()),
                      Text('Total', style: AppStyles.size14w400()),
                    ],
                  ),
                ),
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('12', style: AppStyles.size16w700()),
                      Text('Out of', style: AppStyles.size14w400()),
                      Text('Stock', style: AppStyles.size14w400()),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Products', style: AppStyles.size14w600()),
                TextButton(
                  onPressed: () {},
                  child: Text('View All', style: AppStyles.size14w400()),
                ),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return ProductCard();
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          height: 50.h,
          child: PrimaryButton(
            label: 'Add Product',
            onPressed: () {
              Navigator.pushNamed(context, Routes.addProduct);
            },
          ),
        ),
      ),
    );
  }
}
