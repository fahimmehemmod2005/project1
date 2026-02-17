import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountManagement extends StatefulWidget {
  const AccountManagement({super.key});

  @override
  State<AccountManagement> createState() => _AccountManagementState();
}

class _AccountManagementState extends State<AccountManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Account Management', style: AppStyles.size14w400()),
      ),
      body: HelperWidget(
        child: Container(
          decoration: BoxDecoration(
            color: CupertinoColors.black,
            borderRadius: BorderRadius.circular(12.0.r),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Forgot Password',
                  style: AppStyles.size14w400(),
                ),
                subtitle: Text(
                  'Forgot your account password',
                  style: AppStyles.size12w400(),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.forgotRoute);
                },
              ),
              ListTile(
                title: Text(
                  'Change Password',
                  style: AppStyles.size14w400(),
                ),
                subtitle: Text(
                  'Update your account password',
                  style: AppStyles.size12w400(),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.changepassRoute);
                },
              ),
              ListTile(
                title: Text(
                  'Disable Account',
                  style: AppStyles.size14w400(),
                ),
                subtitle: Text(
                  'Temporarily disable your account',
                  style: AppStyles.size12w400(),
                ),
                onTap: () {
                    showWhiteDialog(
                      context: context,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Disable Account',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: CupertinoColors.white,
                            ),
                          ),
                          10.verticalSpace,
                          Text(
                            'Are you sure you want to disable your account? ',
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
                              Flexible(
                                child: PrimaryButton(
                                  backgroundColor:
                                      CupertinoColors.systemRed,
                                  label: 'Disable',
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(
                                      context,
                                      Routes.loginRoute,
                                    );
                                  },
                                ),
                              ),
                              10.horizontalSpace,
                              Flexible(
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
              ListTile(
                title: Text(
                  'Delete Account',
                  style: AppStyles.size14w400(color: Colors.red),
                ),
                subtitle: Text(
                  'Permanently delete your account ',
                  style: AppStyles.size12w400(color: Colors.red),
                ),
                onTap: () {
                  showWhiteDialog(
                      context: context,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Delete Account',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: CupertinoColors.white,
                            ),
                          ),
                          10.verticalSpace,
                          Text(
                            'This action will permanently delete your account and all related data.',
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
                              Flexible(
                                child: PrimaryButton(
                                  backgroundColor:
                                      CupertinoColors.systemRed,
                                  label: 'Delete',
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(
                                      context,
                                      Routes.loginRoute,
                                    );
                                  },
                                ),
                              ),
                              10.horizontalSpace,
                              Flexible(
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
            ],
          ),
        ),
      ),
    );
  }
}