import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacySettings extends StatefulWidget {
  const PrivacySettings({super.key});

  @override
  State<PrivacySettings> createState() => _PrivacySettingsState();
}

class _PrivacySettingsState extends State<PrivacySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Privacy Settings', style: AppStyles.size14w400()),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Who can see your profile', style: AppStyles.size14w400()),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SwitchListTile(
                    value: true,
                    onChanged: (value) {},
                    title: Text('Public', style: AppStyles.size14w400()),
                  ),
                  SwitchListTile(
                    value: false,
                    onChanged: (value) {},
                    title: Text('Private', style: AppStyles.size14w400()),
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            Text('Who can see your subscriber', style: AppStyles.size14w400()),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SwitchListTile(
                    value: true,
                    onChanged: (value) {},
                    title: Text('Public', style: AppStyles.size14w400()),
                  ),
                  SwitchListTile(
                    value: false,
                    onChanged: (value) {},
                    title: Text('Only me', style: AppStyles.size14w400()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
