import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_model_bottom_sheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileFeaturesWidget extends StatelessWidget {
  const ProfileFeaturesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                  leading: Icon(
                    CupertinoIcons.play_rectangle_fill,
                    color: Colors.white,
                  ),
                  title: Text('Reels', style: AppStyles.size12w400()),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.memories,
                    color: Colors.white,
                  ),
                  title: Text('Story', style: AppStyles.size12w400()),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.square_grid_2x2_fill,
                    color: Colors.white,
                  ),
                  title: Text('Posts', style: AppStyles.size12w400()),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.chart_bar,
                    color: Colors.white,
                  ),
                  title: Text('Dashboard', style: AppStyles.size12w400()),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.news_solid,
                    color: Colors.white,
                  ),
                  title: Text('Broadcast Channels', style: AppStyles.size12w400()),
                  onTap: (){Navigator.pushNamed(context, Routes.broadcastChannal);},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}