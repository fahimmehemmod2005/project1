import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/shop/widgets/store_status_bar.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublicStores extends StatefulWidget {
  const PublicStores({super.key});

  @override
  State<PublicStores> createState() => _PublicStoresState();
}

class _PublicStoresState extends State<PublicStores> {
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
                  image: AssetImage(AppImages.user3),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            5.horizontalSpace,
            Text('Poma', style: AppStyles.size14w600()),
            5.horizontalSpace,
            Image.asset(AppIcons.blueCheck, height: 10.h, width: 10.w),
          ],
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(50.w, 40.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0.r),
                side: BorderSide(color: CupertinoColors.systemPurple),
              ),
            ),
            onPressed: () {
            },
            child: Text('Follow', style: AppStyles.size12w400()),
          ),
          10.horizontalSpace,
        ],
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
                  image: AssetImage(AppImages.shopBanner),
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
                return PublicStoreItemCard();
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class PublicStoreItemCard extends StatelessWidget {
  const PublicStoreItemCard({super.key});

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
                    image: AssetImage(AppImages.mobile),
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
                      'Iphone 11 pro',
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
          10.verticalSpace,
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
              8.horizontalSpace,
              Container(
                height: 38.h,
                width: 38.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: CupertinoColors.systemPurple,
                ),
                child: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
