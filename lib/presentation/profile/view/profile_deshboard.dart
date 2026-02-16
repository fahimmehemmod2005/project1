import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/shop/widgets/store_status_bar.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDeshboard extends StatefulWidget {
  const ProfileDeshboard({super.key});

  @override
  State<ProfileDeshboard> createState() => _ProfileDeshboardState();
}

class _ProfileDeshboardState extends State<ProfileDeshboard> {
  final int dmLimit = 50;
  final int dmUsed = 38;

  @override
  Widget build(BuildContext context) {
    double dmProgress = dmUsed / dmLimit;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text('Analytics', style: AppStyles.size14w600()),
      ),
      body: HelperWidget(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your activity overview', style: AppStyles.size14w600()),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('125', style: AppStyles.size16w700()),
                        Text('Messages', style: AppStyles.size14w400()),
                        Text('Sent', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('5', style: AppStyles.size16w700()),
                        Text('Channels', style: AppStyles.size14w400()),
                        Text('Joined', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('12', style: AppStyles.size16w700()),
                        Text('Groups', style: AppStyles.size14w400()),
                        Text('Active', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2', style: AppStyles.size16w700()),
                        Text('Shop', style: AppStyles.size14w400()),
                        Text('Purchases', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$2400', style: AppStyles.size16w700()),
                        Text('Total', style: AppStyles.size14w400()),
                        Text('Spent', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                  StoreStatusBar(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('156', style: AppStyles.size16w700()),
                        Text('Likes', style: AppStyles.size14w400()),
                        Text('Given', style: AppStyles.size14w400()),
                      ],
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              Text('DM Usage Tracker', style: AppStyles.size14w600()),
              10.verticalSpace,
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(30),
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0.r),
                            child: LinearProgressIndicator(
                              value: dmProgress,
                              minHeight: 20,
                            ),
                          ),
                        ),
                        10.horizontalSpace,
                        Text('$dmUsed/$dmLimit', style: AppStyles.size14w400()),
                      ],
                    ),
                    10.verticalSpace,
                    Text(
                      'You have ${dmLimit - dmUsed} DMs remaining',
                      style: AppStyles.size14w400(),
                    ),
                    10.verticalSpace,
                    Text(
                      'Resets on: March 1, 2026',
                      style: AppStyles.size14w400(),
                    ),
                  ],
                ),
                
              ),
              10.verticalSpace,
              Text('Engagement Stats', style: AppStyles.size14w600()),
              10.verticalSpace,
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(30),
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
