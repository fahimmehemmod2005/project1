import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
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
                 color: Colors.grey.withAlpha(30),
                border: Border.all(color: Colors.amber, width: 0.5),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Row(
                children: [
                  Image.asset(AppIcons.credit,color: Colors.white, height: 30,width: 30,),
                  10.horizontalSpace,
                  Text('Credit/Devit/ Card',style: AppStyles.size16w600(),),
                  const Spacer(),
                  Icon(Icons.check_circle,color: Colors.white,)
                ],
              ),
            ),
            10.verticalSpace,
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15.0.w),
              decoration: BoxDecoration(
                 color: Colors.grey.withAlpha(30),
                border: Border.all(color: Colors.amber, width: 0.5),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Row(
                children: [
                  Image.asset(AppIcons.visa, height: 30,width: 30,),
                  10.horizontalSpace,
                  Text('VISA',style: AppStyles.size16w600(),),
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
                color: Colors.grey.withAlpha(30),
                border: Border.all(color: Colors.amber, width: 0.5),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Row(
                children: [
                  Image.asset(AppIcons.master, height: 30,width: 30,),
                  10.horizontalSpace,
                  Text('MASTAR',style: AppStyles.size16w600(),),
                  const Spacer(),
                  Icon(Icons.circle_outlined,color: Colors.white,)
                ],
              ),
            ),
            30.verticalSpace,
            PrimaryButton(label: 'Continue', onPressed: (){})
          ],
        ),
      ),
    );
  }
}