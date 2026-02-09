import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_model_bottom_sheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: CupertinoColors.transparent,
        appBar: AppBar(
          backgroundColor: CupertinoColors.transparent,
          leading: GestureDetector(
            child: Icon(CupertinoIcons.add, color: Colors.white),
            onTap: () {
              showWhiteModelBottomSheet(
                context: context,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Container(
                        height: 3,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0.r),
                          color: CupertinoColors.white,
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    Card(
                            child: ListTile(
                              leading: Icon(CupertinoIcons.play_rectangle_fill,color: Colors.white,),
                              title: Text('Reels',style: AppStyles.size12w400(),),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: Icon(CupertinoIcons.square_grid_2x2_fill,color: Colors.white,),
                              title: Text('Posts',style: AppStyles.size12w400(),),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: Icon(CupertinoIcons.chart_bar,color: Colors.white,),
                              title: Text('Dashboard',style: AppStyles.size12w400(),),
                            ),
                          ),
                  ],
                ),
              );
            },
          ),
          centerTitle: true,
          title: Text(
            'username',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          actions: [
            GestureDetector(
              child: Icon(CupertinoIcons.bars, color: Colors.white),
            ),
            10.horizontalSpace,
          ],
        ),
        body: SafeArea(
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
                          color: CupertinoColors.systemGrey.withAlpha(70),
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.camera_fill,
                              color: CupertinoColors.activeOrange,
                            ),
                          ),
                        ),
                      ),

                      15.horizontalSpace,

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Account Holder Name',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: AppStyles.size14w600(),
                            ),
                            5.verticalSpace,
                            Row(
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
                                Column(
                                  children: [
                                    Text(
                                      '0',
                                      style: AppStyles.size14w600(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                    Text(
                                      'followers',
                                      style: AppStyles.size12w400(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                                45.horizontalSpace,
                                Column(
                                  children: [
                                    Text(
                                      '0',
                                      style: AppStyles.size14w600(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                    Text(
                                      'friends',
                                      style: AppStyles.size12w400(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
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
                GestureDetector(
                  child: Text(
                    'Social Links...',
                    style: AppStyles.size12w400(
                      color: CupertinoColors.activeOrange,
                    ),
                  ),
                  onTap: () {
                    showWhiteModelBottomSheet(
                      context: context,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 3,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0.r),
                              color: CupertinoColors.white,
                            ),
                          ),
                          10.verticalSpace,
                          Card(
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.youtube,
                                height: 20.h,
                                width: 20.w,
                              ),
                              title: Text('Youtube'),
                              trailing: Icon(
                                CupertinoIcons.arrow_right_circle_fill,
                              ),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.instagram,
                                height: 20.h,
                                width: 20.w,
                              ),
                              title: Text('Instagram'),
                              trailing: Icon(
                                CupertinoIcons.arrow_right_circle_fill,
                              ),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.tiktok,
                                height: 20.h,
                                width: 20.w,
                              ),
                              title: Text('Tiktok'),
                              trailing: Icon(
                                CupertinoIcons.arrow_right_circle_fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CupertinoColors.systemGrey.withAlpha(
                            80,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0.r),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Edit profile',
                          style: AppStyles.size12w400(),
                        ),
                      ),
                    ),
                    5.horizontalSpace,
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CupertinoColors.systemGrey.withAlpha(
                            80,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0.r),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Share profile',
                          style: AppStyles.size12w400(),
                        ),
                      ),
                    ),
                    5.horizontalSpace,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CupertinoColors.systemGrey.withAlpha(
                          80,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0.r),
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(
                        CupertinoIcons.person_fill,
                        color: CupertinoColors.white,
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
                        CupertinoIcons.square_grid_2x2,
                        size: 30,
                        color: CupertinoColors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.play_rectangle_fill,
                        size: 30,
                        color: CupertinoColors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.camera_on_rectangle,
                        size: 30,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,

                Expanded(
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
                              5.verticalSpace,
                              Text(
                                'Create your first post',
                                style: AppStyles.size16w600(),
                              ),
                              5.verticalSpace,
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: CupertinoColors.activeOrange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0.r),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Create',
                                  style: AppStyles.size14w400(),
                                ),
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
                                CupertinoIcons.camera_on_rectangle,
                                size: 100,
                                color: CupertinoColors.white,
                              ),
                              10.verticalSpace,
                              Text(
                                'Photos and videos of you',
                                style: AppStyles.size16w600(),
                              ),
                              5.verticalSpace,
                              Text(
                                "When  people tag you in photos and videos, they'll appear here",
                                style: AppStyles.size12w400(),
                                textAlign: TextAlign.center,
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
    );
  }
}
