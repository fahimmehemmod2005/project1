import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({super.key});

  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Choose Plan', style: AppStyles.size20w600()),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              children: [
                Container(
                  height: 50.h,
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey.withAlpha(30),
                    borderRadius: BorderRadius.circular(12.0.r),
                  ),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: CupertinoColors.activeOrange,
                      borderRadius: BorderRadius.circular(12.0.r),
                    ),
                    tabs: [
                      customTabs(tabs: 'Free'),
                      customTabs(tabs: 'Monthly'),
                      customTabs(tabs: 'Yearly'),
                    ],
                  ),
                ),
                20.verticalSpace,
                Expanded(
                  child: TabBarView(children: [Free(), Monthly(), Yearly()]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Tab customTabs({required String tabs}) {
  return Tab(
    child: Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
      child: Text(
        tabs,
        style: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
          color: CupertinoColors.white,
        ),
      ),
    ),
  );
}

class Free extends StatelessWidget {
  const Free({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text('This is free to use', style: AppStyles.size18w700()),
            ),
            10.verticalSpace,
            buildRow(text: 'Create account'),
            10.verticalSpace,
            buildRow(text: 'Join broadcast channels'),
            10.verticalSpace,
            buildRow(text: 'Participate in group chats'),
            10.verticalSpace,
            buildRow(text: 'Basic profile customization'),
            10.verticalSpace,
            buildRow(text: '2 Direct Messages per month'),
            10.verticalSpace,
            buildRow(text: 'Receive notifications'),
            10.verticalSpace,
            PrimaryButton(label: 'Try now for 7 days', onPressed: () {
              Navigator.pushNamed(context, Routes.mainScreenRoute);
            }),
          ],
        ),
      ),
    );
  }
}

class Monthly extends StatelessWidget {
  const Monthly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContainer(
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
                    TextSpan(text: 'Month', style: AppStyles.size16w700()),
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
            10.verticalSpace,
            PrimaryButton(label: 'Buy Now', onPressed: () {
              Navigator.pushNamed(context, Routes.paymentMethod);
            }),
          ],
        ),
      ),
    );
  }
}

class Yearly extends StatelessWidget {
  const Yearly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  text: '\$3500/',
                  style: AppStyles.size28w500(),
                  children: [
                    TextSpan(text: 'Yearly', style: AppStyles.size16w700()),
                  ],
                ),
              ),
            ),
            10.verticalSpace,
            buildRow(text: ' All Monthly features'),
            10.verticalSpace,
            buildRow(text: 'Messages to favorite creators'),
            10.verticalSpace,
            buildRow(text: 'Unlimited creator subscriptions'),
            10.verticalSpace,
            buildRow(text: 'Send voice & video messages'),
            10.verticalSpace,
            buildRow(text: '15% discount on shop purchases'),
            10.verticalSpace,
            buildRow(text: '"VIP Fan" badge'),
            10.verticalSpace,
            buildRow(text: 'Unlimited DMs on birthday month'),
            10.verticalSpace,
            buildRow(text: '2 months extra free'),
            10.verticalSpace,
            buildRow(text: 'Free merchandise'),
            10.verticalSpace,
            buildRow(text: 'Analytics dashboard access'),
            10.verticalSpace,
            PrimaryButton(label: 'Buy Now', onPressed: () {
               Navigator.pushNamed(context, Routes.paymentMethod);
            }),
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
