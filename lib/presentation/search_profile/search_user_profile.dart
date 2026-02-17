import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/profile/widgets/social_links_button.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchUserProfile extends StatefulWidget {
  const SearchUserProfile({super.key});

  @override
  State<SearchUserProfile> createState() => _SearchUserProfileState();
}

class _SearchUserProfileState extends State<SearchUserProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF1a1625), // Dark purple-black
                  Color(0xFF0d0a15), // Deep black
                  Color(0xFF1e1433), // Dark purple
                  Color(0xFF0a0812), // Very dark black
                ],
                stops: [0.0, 0.3, 0.7, 1.0],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.verticalSpace,
                  SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: CupertinoColors.systemPurple,
                              width: 2,
                            ),
                            image: DecorationImage(
                              image: AssetImage(AppImages.user4),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        15.horizontalSpace,

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 10,
                                    child: Text(
                                      'Aryan',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: AppStyles.size14w600(),
                                    ),
                                  ),
                                  5.horizontalSpace,
                                  Flexible(
                                    child: Image.asset(
                                      AppIcons.blueCheck,
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              ),
                              5.verticalSpace,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '0',
                                        style: AppStyles.size14w600(),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      Text(
                                        'post',
                                        style: AppStyles.size12w400(),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                  45.horizontalSpace,
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        Routes.subscriberScreen,
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Text(
                                          '10',
                                          style: AppStyles.size14w600(),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                        Text(
                                          'subscriber',
                                          style: AppStyles.size12w400(),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ],
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
                  10.verticalSpace,
                  Text(
                    'Biggest supporter of @creatorname',
                    style: AppStyles.size12w400(),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SocialLinksButton(),

                  Row(
                    children: [
                      Flexible(
                        child: PrimaryButton(
                          label: 'Subscribe',
                          height: 35.h,
                          borderRadius: 5.0.r,
                          backgroundColor: CupertinoColors.systemPurple,
                          fontSize: 15.sp,
                          onPressed: () {},
                        ),
                      ),
                      5.horizontalSpace,
                      Flexible(
                        child: PrimaryButton(
                          label: 'Message',
                          height: 35.h,
                          borderRadius: 5.0.r,
                          backgroundColor: CupertinoColors.systemGrey.withAlpha(
                            80,
                          ),
                          fontSize: 15.sp,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  TabBar(
                    dividerColor: CupertinoColors.transparent,
                    indicatorColor: CupertinoColors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.square_grid_2x2_fill,
                          size: 20,
                          color: CupertinoColors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.play_rectangle_fill,
                          size: 20,
                          color: CupertinoColors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.lock_circle_fill,
                          size: 20,
                          color: CupertinoColors.white,
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,

                  Flexible(
                    child: TabBarView(
                      
                      children: [
                        SizedBox(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppImages.noPost1,
                                  height: 200.h,
                                  width: 200.w,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Center(
                            child: Image.asset(
                              AppImages.noPost2,
                              height: 250.h,
                              width: 250.w,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.lock_circle_fill,
                                  size: 100,
                                  color: CupertinoColors.white,
                                ),
                                10.verticalSpace,
                                Text(
                                  'Private photos and videos',
                                  style: AppStyles.size16w600(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

