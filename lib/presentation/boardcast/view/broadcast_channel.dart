import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/user_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BroadcastChannel extends StatefulWidget {
  const BroadcastChannel({super.key});

  @override
  State<BroadcastChannel> createState() => _BroadcastChannelState();
}

class _BroadcastChannelState extends State<BroadcastChannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Broadcast Channels', style: AppStyles.size14w600()),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.createChannel);
            },
            icon: Icon(Icons.add, color: Colors.white),
          ),
          5.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Channels', style: AppStyles.size14w600()),
            10.verticalSpace,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return UserCard(
                  image: AppImages.user1,
                  showBadge: false,
                  title: 'Funny Videos',
                  subtitle: 'This channel only for entertainment',
                  buttonTitle: 'visit',
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.myChannels);
                  },
                  viewProfielOnTap: () {
                     Navigator.pushNamed(context, Routes.myChannels);
                  },
                );
              },
            ),
            10.verticalSpace,
            Text('Channels', style: AppStyles.size14w600()),
            10.verticalSpace,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return UserCard(
                  image: AppImages.user1,
                  showBadge: false,
                  title: 'Entertainment',
                  subtitle: 'This channel only for entertainment',
                  buttonTitle: 'Join',
                  onPressed: () {},
                  viewProfielOnTap: () {
                    Navigator.pushNamed(context, Routes.publicChannels);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
