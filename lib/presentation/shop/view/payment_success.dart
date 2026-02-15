import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
    @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Routes.mainScreenRoute);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            200.verticalSpace,
            Image.asset(AppIcons.cardBlue),
            10.verticalSpace,
            Text('Payment Success!',style: AppStyles.size16w400(),),
            Text('Your item will be shipped soon!',style: AppStyles.size12w400(),)
          ],
        ),
      ),
    );
  }
}