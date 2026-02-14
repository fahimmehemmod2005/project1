import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      height: 70.0.h,
      width: 75.0.w,
      textStyle: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w500,
        color: CupertinoColors.white,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.0.r),
        border: Border.all(color: CupertinoColors.systemGrey, width: 0.5),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.0.r),
        border: Border.all(color: CupertinoColors.systemPurple, width: 0.5),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0.r),
        border: Border.all(color: CupertinoColors.systemRed, width: 0.5),
      ),
    );

    return Scaffold(
        extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('OTP Verification', style: AppStyles.size20w600()),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.verticalSpace,
            Text('Enter OTP CODE', style: AppStyles.size20w600()),
            Text(
              "Please submit your 4 digit code in your email",
              style: AppStyles.size14w600(),
            ),
            Text("abcd@example.com", style: AppStyles.size14w600()),
            30.verticalSpace,
              
            Pinput(
              keyboardType: TextInputType.number,
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              errorPinTheme: errorPinTheme,
            ),
            20.verticalSpace,
              
            Center(
              child: RichText(
                  text: TextSpan(
                    text: "Don't receive the code? ",
                    style: AppStyles.size12w400(),
                    children: [
                      TextSpan(
                        text: "resend code",
                        style: AppStyles.size12w400(color: CupertinoColors.systemPurple),
                      ),
                    ],
                  ),
                ),
            ),
              
            20.verticalSpace,
              
            PrimaryButton(label: 'Submit', onPressed: () {
              Navigator.pushNamed(context, Routes.changepassRoute);
            }),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
