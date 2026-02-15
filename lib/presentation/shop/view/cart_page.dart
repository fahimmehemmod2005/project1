import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Cart', style: AppStyles.size16w400()),
      ),
      body: HelperWidget(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (context, index) => 5.verticalSpace,
              itemBuilder: (context, index) {
                return CartItemCard();
              }, 
              )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          height: 50.h,
          child: PrimaryButton(
            label: 'Buy Now - \$3550.0',
            height: 30.h,
            onPressed: () {
              Navigator.pushNamed(context, Routes.orderReview);
            },
          ),
        ),
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(10),
            borderRadius: BorderRadius.circular(10.0.r),
            border: Border.all(width: 0.5,color: CupertinoColors.systemPurple)
          ),
          child: Row(
            children: [
              Container(
                height: 50.h,
                width: 50.w,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  color: Colors.white.withAlpha(30),
                ),
                child: Image.asset(AppImages.shirtRed),
              ),
              10.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Text(
                    'Blue Shoes of Nike',
                    style: AppStyles.size14w400(),
                  ),
                ],
              ),
              const Spacer(),
              Text('\$399', style: AppStyles.size14w600()),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.white.withAlpha(30),
              ),
              onPressed: () {},
              icon: Icon(Icons.remove),
            ),
            5.horizontalSpace,
            Text('1'),
            5.horizontalSpace,
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.white.withAlpha(60),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
