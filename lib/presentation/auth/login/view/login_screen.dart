import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HelperWidget(
        child: Center(
          child: Column(
            children: [
              130.verticalSpace,
              Text(
                'Cryptic',
                style: GoogleFonts.playwriteAr(
                  fontSize: 50,
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              30.verticalSpace,
              TextInputField(
                mainLabel: 'Email',
                hintText: 'Enter Your Email'
                ),
              20.verticalSpace,
              TextInputField(
                mainLabel: 'Password',
                hintText: 'Enter Your Password',
                suffixIcon: CupertinoIcons.eye,
                obscureText: true,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    shape: CircleBorder(),
                    checkColor: Colors.white,
                    activeColor: CupertinoColors.activeOrange,
                  ),
                  Text('Save Password', style: AppStyles.size12w400()),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.forgotRoute);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: AppStyles.size12w400(color: CupertinoColors.activeOrange),
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
              PrimaryButton(label: 'Login', onPressed: () {
                Navigator.pushNamed(context, Routes.mainScreenRoute);
              }),
              20.verticalSpace,
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: AppStyles.size12w400(),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: AppStyles.size12w400(color: CupertinoColors.activeOrange),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.pushNamed(context, Routes.signupRoute);
                      },
                    ),
                  ],
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
