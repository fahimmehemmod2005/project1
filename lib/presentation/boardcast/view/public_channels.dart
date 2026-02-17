import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/home/view/home_screen.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublicChannels extends StatefulWidget {
  const PublicChannels({super.key});

  @override
  State<PublicChannels> createState() => _PublicChannelsState();
}

class _PublicChannelsState extends State<PublicChannels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.share, color: Colors.white),
          ),
          5.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170.0.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                image: DecorationImage(
                  image: AssetImage(AppImages.cover),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            5.verticalSpace,
            Text('Entertainment', style: AppStyles.size14w600()),
            Row(
              children: [
                Icon(Icons.public, color: Colors.white, size: 15),
                5.horizontalSpace,
                Text('Private', style: AppStyles.size12w400()),
                10.horizontalSpace,
                Container(height: 10.h, width: 1.w, color: Colors.grey),
                10.horizontalSpace,
                Text('3.2K members', style: AppStyles.size12w400()),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    label: 'Join',
                    fontSize: 12.0.sp,
                    borderRadius: 5.0.r,
                    height: 30.0.h,
                    onPressed: () {},
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: PrimaryButton(
                    label: 'Invite',
                    fontSize: 12.0.sp,
                    borderRadius: 5.0.r,
                    height: 30.0.h,
                    onPressed: () {},
                    backgroundColor: CupertinoColors.systemGrey.withAlpha(80),
                  ),
                ),
              ],
            ),
            5.verticalSpace,
            Text('Most Relevant',style: AppStyles.size14w600(),),
            10.verticalSpace,
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  separatorBuilder: (context, index) => 10.verticalSpace,
                  itemBuilder: (context, index) {
                    return PhotosCard(
                      profile: AppImages.user6,
                      name: 'Alex',
                      title: 'This is nature',
                      photo: AppImages.shopBanner,
                      like: '12.5K',
                      comment: '450',
                      share: "1k",
                    );
                  },
                ),
          ],
        ),
      ),
    );
  }
}