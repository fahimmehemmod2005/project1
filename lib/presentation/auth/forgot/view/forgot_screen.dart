import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Forgot Screen', style: AppStyles.size16w400()),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.verticalSpace,
            Text('Email Address', style: AppStyles.size20w600()),
            Text(
              "Enter your email, and we'll guide you to reset your password",
              style: AppStyles.size14w600(),
            ),
            50.verticalSpace,
            TextInputField(mainLabel: 'Email', hintText: 'Enter your email'),
              
            30.verticalSpace,
            PrimaryButton(
              label: 'Next',
              onPressed: () {
                Navigator.pushNamed(context, Routes.otpRoute);
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
