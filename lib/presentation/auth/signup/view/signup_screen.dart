import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_application_1/presentation/widgets/widget_country_picker_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Cryptic',
                  style: GoogleFonts.playwriteAr(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              30.verticalSpace,
              TextInputField(
                mainLabel: 'Full Name',
                hintText: 'Enter Your Name',
              ),
              10.verticalSpace,
              TextInputField(
                mainLabel: 'Email',
                hintText: 'Enter Your Email',
              ),
              10.verticalSpace,
              WidgetCountryPickerField(
                mainLabel: 'Number',
                hintText: 'Enter Your Number',
              ),
              TextInputField(
                mainLabel: 'Password',
                hintText: 'Enter Your Password',
              ),
              10.verticalSpace,
              TextInputField(
                mainLabel: 'Confirm Password',
                hintText: 'Re-Type Your Password',
              ),
              10.verticalSpace,
              Text('Select Roll',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),),
              5.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withAlpha(30),
                        border: Border.all(color: Colors.amber, width: 0.5),
                        borderRadius: BorderRadius.circular(12.r)
                      ),
                      child: Center(child: Text('Creator',style: AppStyles.size14w400(),)),
                    ),
                  ),
                  20.horizontalSpace,
                  Expanded(
                    child: Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withAlpha(30),
                        border: Border.all(color: Colors.white, width: 0.5),
                        borderRadius: BorderRadius.circular(12.r)
                      ),
                      child: Center(child: Text('Fans',style: AppStyles.size14w400(),)),
                    ),
                  ),
                ],
              ),
              Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      shape: CircleBorder(),
                      checkColor: Colors.white,
                      activeColor: Colors.amber,
                    ),
                    RichText(
                  text: TextSpan(
                    text: "I agree all with ",
                    style: AppStyles.size12w400(),
                    children: [
                      TextSpan(
                        text: "Terms and condition",
                        style: AppStyles.size12w400(color: Colors.amber),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
                  ],
                ),
              PrimaryButton(label: 'Sign Up', onPressed: (){}),
              20.verticalSpace,
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "I already have an account? ",
                      style: AppStyles.size12w400(),
                      children: [
                        TextSpan(
                          text: "Login",
                          style: AppStyles.size12w400(color: Colors.amber),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.pushNamed(context, Routes.loginRoute);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
