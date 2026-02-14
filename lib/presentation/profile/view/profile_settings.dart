import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: CupertinoColors.transparent,
        centerTitle: true,
        title: Text('Settings', style: AppStyles.size16w600()),
      ),
      body: HelperWidget(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: CupertinoColors.black,
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              child: Column(
                children: [
                  SettingsCard(
                    title: 'Privacy Settings',
                    preffixIcon: CupertinoIcons.shield_fill,
                    onTap: () {},
                  ),
                  SettingsCard(
                    title: 'Payment and Invoice',
                    preffixIcon: CupertinoIcons.creditcard_fill,
                    onTap: () {},
                  ),
                  SettingsCard(
                    title: 'Account Management',
                    preffixIcon: CupertinoIcons.settings,
                    onTap: () {},
                  ),
                  SettingsCard(
                    title: 'Manage Subscription',
                    preffixIcon: CupertinoIcons.rosette,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.currentPlanRoute);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Logout', style: AppStyles.size12w400()),

        icon: Icon(CupertinoIcons.escape, size: 20.0),
        elevation: 5,
        backgroundColor: CupertinoColors.systemRed,
        onPressed: () {
          showWhiteDialog(
            context: context,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: CupertinoColors.white,
                  ),
                ),
                10.verticalSpace,
                Text(
                  'Are you sure want to logout?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: CupertinoColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                20.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: PrimaryButton(
                        backgroundColor: CupertinoColors.systemRed,
                        label: 'Logout',
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, Routes.loginRoute);
                        },
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: PrimaryButton(
                        label: 'Cancel',
                        backgroundColor: CupertinoColors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SettingsCard extends StatelessWidget {
  final String title;
  final IconData preffixIcon;
  final void Function() onTap;
  const SettingsCard({
    super.key,
    required this.title,
    required this.preffixIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(preffixIcon, size: 20.0),
        title: Text(title),
        titleTextStyle: AppStyles.size12w400(),
        trailing: Icon(CupertinoIcons.chevron_right, size: 20.0),
      ),
    );
  }
}
