import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Select Payment Method', style: AppStyles.size16w400()),
      ),
      body: HelperWidget(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15.0.w),
              decoration: BoxDecoration(
                 color: CupertinoColors.systemGrey.withAlpha(30),
                border: Border.all(color: CupertinoColors.activeOrange, width: 0.5),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Row(
                children: [
                  Image.asset(AppIcons.credit,color: CupertinoColors.white, height: 30,width: 30,),
                  10.horizontalSpace,
                  Text('Credit/Devit/ Card',style: AppStyles.size16w600(),),
                  const Spacer(),
                  Icon(Icons.check_circle,color: CupertinoColors.white,)
                ],
              ),
            ),
            10.verticalSpace,
            Container(
               width: double.infinity,
              padding: EdgeInsets.all(15.0.w),
              decoration: BoxDecoration(
                 color: CupertinoColors.systemGrey.withAlpha(30),
                border: Border.all(color: CupertinoColors.activeOrange, width: 0.5),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Row(
                children: [
                  Image.asset(AppIcons.visa, height: 30,width: 30,),
                  10.horizontalSpace,
                  Text('Visa',style: AppStyles.size16w600(),),
                  const Spacer(),
                  Icon(Icons.circle_outlined,color: Colors.white,)
                ],
              ),
            ),
            10.verticalSpace,
            Container(
               width: double.infinity,
              padding: EdgeInsets.all(15.0.w),
              decoration: BoxDecoration(
                 color: CupertinoColors.systemGrey.withAlpha(30),
                border: Border.all(color: CupertinoColors.activeOrange, width: 0.5),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Row(
                children: [
                  Image.asset(AppIcons.master, height: 30,width: 30,),
                  10.horizontalSpace,
                  Text('Master',style: AppStyles.size16w600(),),
                  const Spacer(),
                  Icon(Icons.circle_outlined,color: Colors.white,)
                ],
              ),
            ),
            30.verticalSpace,
            PrimaryButton(label: 'Continue', onPressed: (){
              Navigator.pushNamed(context, Routes.paymentSummary);
            })
          ],
        ),
      ),
    );
  }
}