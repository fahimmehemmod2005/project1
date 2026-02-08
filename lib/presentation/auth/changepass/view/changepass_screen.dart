import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangepassScreen extends StatefulWidget {
  const ChangepassScreen({super.key});

  @override
  State<ChangepassScreen> createState() => _ChangepassScreenState();
}

class _ChangepassScreenState extends State<ChangepassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Reset Password', style: AppStyles.size20w600()),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.verticalSpace,
            Text('Create a new password', style: AppStyles.size20w600()),
            Text(
              "Enter your new password",
              style: AppStyles.size14w600(),
            ),
             50.verticalSpace,
             TextInputField(
              mainLabel: 'Password',
              hintText: 'Enter a password',
             ),
             10.verticalSpace,
             TextInputField(
              mainLabel: 'Confirm Password',
              hintText: 'Re-type password',
             ),
             30.verticalSpace,
             PrimaryButton(label: 'Change Password', onPressed: (){
              Navigator.pushNamed(context, Routes.loginRoute);
             }),
             10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
