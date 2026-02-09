import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentPlan extends StatefulWidget {
  const CurrentPlan({super.key});

  @override
  State<CurrentPlan> createState() => _CurrentPlanState();
}

class _CurrentPlanState extends State<CurrentPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.transparent,
        centerTitle: true,
        title: Text('Current Plan', style: AppStyles.size16w600()),
      ),
      body: HelperWidget(
        child: Column(
          children: [
            buildContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: '\$500/',
                        style: AppStyles.size28w500(),
                        children: [
                          TextSpan(
                            text: 'Month',
                            style: AppStyles.size16w700(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  buildRow(text: ' All Free features'),
                  10.verticalSpace,
                  buildRow(text: 'Messages to favorite creators'),
                  10.verticalSpace,
                  buildRow(text: 'Premium content access'),
                  10.verticalSpace,
                  buildRow(text: ' Subscribe to multiple creators'),
                  10.verticalSpace,
                  buildRow(text: 'Ad-free experience'),
                  10.verticalSpace,
                  buildRow(text: '10% discount on shop purchases'),
                  10.verticalSpace,
                  buildRow(text: '"Premium Fan" badge'),
                  10.verticalSpace,
                  buildRow(text: 'Priority customer support'),
                  10.verticalSpace,
                  buildRow(text: 'Priority access in group chats'),
                  10.verticalSpace,
                  buildRow(text: 'Early access to new content'),
                ],
              ),
            ),
            20.verticalSpace,
            buildContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "You're currently on the Monthly plan",
                    style: AppStyles.size14w400(),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Next billing date: 25 November 2026',
                    style: AppStyles.size12w400(),
                  ),
                  5.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                          label: 'Change Plan',
                          fontSize: 12.sp,
                          backgroundColor: CupertinoColors.black.withAlpha(30),
                          borderColor: CupertinoColors.activeOrange,
                          height: 35.h,
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              Routes.membershipRoute,
                            );
                          },
                        ),
                      ),
                      10.horizontalSpace,
                      Expanded(
                        child: PrimaryButton(
                          label: 'Cancel Plan',
                          fontSize: 12.sp,
                          backgroundColor: CupertinoColors.black.withAlpha(30),
                          borderColor: CupertinoColors.systemRed,
                          height: 35.h,
                          onPressed: () {
                            showWhiteDialog(
                              context: context,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Are you sure',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: CupertinoColors.white,
                                    ),
                                  ),
                                  10.verticalSpace,
                                  Text(
                                    'You want to cancel the plan',
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
                                          backgroundColor:
                                              CupertinoColors.systemRed,
                                          label: 'Yes',
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.pushNamed(
                                              context,
                                              Routes.membershipRoute,
                                            );
                                          },
                                        ),
                                      ),
                                      10.horizontalSpace,
                                      Expanded(
                                        child: PrimaryButton(
                                          label: 'No',
                                          backgroundColor:
                                              CupertinoColors.black,
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
                      ),
                    ],
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

Container buildContainer({required Widget child}) {
  return Container(
    padding: EdgeInsets.all(15.0),
    width: double.infinity,
    decoration: BoxDecoration(
      color: CupertinoColors.systemGrey.withAlpha(30),
      borderRadius: BorderRadius.circular(12.0.r),
      border: Border.all(color: CupertinoColors.activeOrange, width: 0.5),
    ),
    child: child,
  );
}

Row buildRow({required String text}) {
  return Row(
    children: [
      Image.asset(AppIcons.check, color: CupertinoColors.white),
      10.horizontalSpace,
      Text(text, style: AppStyles.size14w400()),
    ],
  );
}
