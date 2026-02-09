import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSummary extends StatefulWidget {
  const PaymentSummary({super.key});

  @override
  State<PaymentSummary> createState() => _PaymentSummaryState();
}

class _PaymentSummaryState extends State<PaymentSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Payment Summary', style: AppStyles.size16w400()),
      ),
      body: HelperWidget(
        child: Column(
          children: [
            Container(
             width: double.infinity,
              padding: EdgeInsets.all(12.0.w),
              decoration: BoxDecoration(
                 color: CupertinoColors.systemGrey.withAlpha(30),
                border: Border.all(color: CupertinoColors.activeOrange, width: 0.5),
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
                      color: CupertinoColors.activeOrange,
                    ),
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Pro Plan'), Text('\$499')],
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Building Cycle'), Text('Monthly')],
                  ),
                  15.verticalSpace,
                  const Divider(color: CupertinoColors.systemGrey),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total'),
                      Text(
                        '\$499',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: CupertinoColors.activeOrange,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            20.verticalSpace,
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey.withAlpha(30),
                border: Border.all(color: CupertinoColors.activeOrange, width: 0.5),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: ListTile(
                leading: Image.asset(
                  AppIcons.credit,
                  height: 40,
                  width: 40,
                  color: CupertinoColors.white,
                ),
                title: Text(
                  'Credit / Debit Card',
                  style: AppStyles.size14w400(),
                ),
                trailing: Text(
                  'Change',
                  style: TextStyle(
                    color: CupertinoColors.activeOrange,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.paymentMethod);
                },
              ),
            ),

            30.verticalSpace,

            PrimaryButton(
              label: 'Confirm',
              onPressed: () {
                showWhiteDialog(
                  context: context,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppIcons.checkColor2,
                        height: 100.h,
                        width: 100.w,
                      ),
                      20.verticalSpace,
                      Text(
                        'Welcome to PRO Plan!',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: CupertinoColors.white,
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        'You have successfully subscribed Pro for 6 months! E-Receipt has been sent to your email address. Enjoy all the benefits!',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: CupertinoColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      20.verticalSpace,
                      PrimaryButton(
                        label: 'Go to home',
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, Routes.mainScreenRoute);
                        },
                      ),
                      10.verticalSpace,
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
