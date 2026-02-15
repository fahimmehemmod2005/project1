import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_dialog.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_model_bottom_sheet.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderReview extends StatefulWidget {
  const OrderReview({super.key});

  @override
  State<OrderReview> createState() => _OrderReviewState();
}

class _OrderReviewState extends State<OrderReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Order Review', style: AppStyles.size14w600()),
      ),
      body: HelperWidget(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return OrderCard();
              },
            ),
            10.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: TextInputField(hintText: 'Promocode')),
                5.horizontalSpace,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(20, 50.h),
                    backgroundColor: Colors.white.withAlpha(30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Submit', style: AppStyles.size12w400()),
                ),
              ],
            ),
            10.verticalSpace,
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.0.w),
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey.withAlpha(30),
                border: Border.all(
                  color: CupertinoColors.systemPurple,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Summary',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: CupertinoColors.systemPurple,
                    ),
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Subtotal'), Text('\$7997.0')],
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Shipping Fee'), Text('\$32.0')],
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Tax Fee'), Text('\$321.0')],
                  ),
                  15.verticalSpace,
                  const Divider(color: CupertinoColors.systemGrey),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total'),
                      Text(
                        '\$3550.0',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: CupertinoColors.systemPurple,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey.withAlpha(30),
                border: Border.all(
                  color: CupertinoColors.systemPurple,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: ListTile(
                leading: Image.asset(AppIcons.master, height: 40, width: 40),
                title: Text('Master', style: AppStyles.size14w400()),
                trailing: Text(
                  'Change',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onTap: () {
                  showWhiteModelBottomSheet(
                    context: context,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Container(
                            height: 3,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.r),
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        Text('Payment Method', style: AppStyles.size16w600()),
                        20.verticalSpace,
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemGrey.withAlpha(30),
                            border: Border.all(
                              color: CupertinoColors.systemPurple,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(12.0.r),
                          ),
                          child: ListTile(
                            leading: Image.asset(
                              AppIcons.car,
                              height: 30.h,
                              width: 30.w,
                            ),
                            title: Text('Cash on delivery'),
                            titleTextStyle: AppStyles.size12w400(),
                          ),
                        ),
                        ListTile(
                          leading: Image.asset(
                            AppIcons.master,
                            height: 30.h,
                            width: 30.w,
                          ),
                          title: Text('Master'),
                          titleTextStyle: AppStyles.size12w400(),
                        ),
                        ListTile(
                          leading: Image.asset(
                            AppIcons.visa,
                            height: 30.h,
                            width: 30.w,
                          ),
                          title: Text('Visa'),
                          titleTextStyle: AppStyles.size12w400(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            10.verticalSpace,
            Text('Shipping Address', style: AppStyles.size16w400()),
            10.verticalSpace,

            Container(
              padding: EdgeInsets.all(10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey.withAlpha(30),
                border: Border.all(
                  color: CupertinoColors.systemPurple,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Unknown Pro', style: AppStyles.size14w600()),
                  5.verticalSpace,
                  Row(
                    children: [
                      Icon(Icons.call_outlined, color: Colors.white),
                      10.horizontalSpace,
                      Text('+880 1600-237552', style: AppStyles.size12w400()),
                    ],
                  ),
                  5.verticalSpace,
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.white),
                      10.horizontalSpace,
                      Text(
                        'House No.295, Hyderabad, Sindh, Pakistan',
                        style: AppStyles.size12w400(),
                      ),
                    ],
                  ),
                ],
              ),
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
            label: 'Buy Now - \$3550.0',
            height: 30.h,
            onPressed: () {
              showWhiteDialog(
                context: context,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.info_outline,color: Colors.red,size: 100,),
                    Text('Are you sure', style: AppStyles.size14w600()),
                    Text(
                      'You want to bye this product',
                      style: AppStyles.size12w400(),
                    ),
                    10.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: PrimaryButton(
                            label: 'Buy',
                            width: 200.w,
                            height: 35.h,
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, Routes.paymentSuccess);
                            },
                          ),
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: PrimaryButton(
                            backgroundColor: Colors.red,
                            label: 'Cancel',
                            width: 200.w,
                            height: 35.h,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(10),
            borderRadius: BorderRadius.circular(10.0.r),
            border: Border.all(width: 0.5, color: CupertinoColors.systemPurple),
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
                  Text('Blue Shoes of Nike', style: AppStyles.size14w400()),
                  Row(
                    children: [
                      Text('Color - Blue', style: AppStyles.size12w400()),
                      5.horizontalSpace,
                      Container(height: 10.h, width: 1.w, color: Colors.white),
                      5.horizontalSpace,
                      Text('Size - 32', style: AppStyles.size12w400()),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
