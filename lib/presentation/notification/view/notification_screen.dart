import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/notification/widgets/notification_card.dart'
    show NotificationCard;
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var today = [
    {'time': "2m"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Notifications', style: AppStyles.size16w400()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.speaker_slash, color: Colors.white),
          ),
          10.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today', style: AppStyles.size14w400()),
                Text('Mark all as read', style: AppStyles.size14w400()),
              ],
            ),
            10.verticalSpace,
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return NotificationCard(
                  image: AppIcons.search,
                  title: "Sports Pick",
                  content:
                      "We predict Man City to win based on home advantage, xG, and injuries.",
                  time: "2m",
                  onTap: (){},
                );
              },
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Yesterday', style: AppStyles.size14w400()),
                Text('Mark all as read', style: AppStyles.size14w400()),
              ],
            ),
            10.verticalSpace,
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return NotificationCard(
                  image: AppIcons.search,
                  title: "Sports Pick",
                  content:
                      "We predict Man City to win based on home advantage, xG, and injuries.",
                  time: "2m",
                  onTap: (){},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
