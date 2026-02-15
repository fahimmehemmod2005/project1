import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/chat/widgets/chat_card.dart';
import 'package:flutter_application_1/presentation/chat/widgets/online_card.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/show_white_dialog.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Messages', style: AppStyles.size16w700()),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInputField(
              hintText: 'Search anyone',
              suffixIcon: CupertinoIcons.search_circle_fill,
            ),
            10.verticalSpace,
            Text('Online Creator', style: AppStyles.size14w600()),
            10.verticalSpace,
            SizedBox(
              height: 75.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                separatorBuilder: (context, index) => 15.horizontalSpace,
                itemBuilder: (context, index) {
                  return OnlineCard(
                    image: AppImages.user6,
                    name: 'ayan12',
                    onTap: () {},
                  );
                },
              ),
            ),
            10.verticalSpace,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              separatorBuilder: (context, index) => 10.verticalSpacingRadius,
              itemBuilder: (context, index) {
                return ChatCard(
                  image: AppImages.user4,
                  title: 'Aryan Khan',
                  subTitle: 'You send a message',
                  date: 'Feb 3',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.chatRoute);
                  },
                  onLongTap: () {
                    showWhiteDialog(
                      context: context,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(
                                context,
                                Routes.searchUserProfile,
                              );
                            },
                            child: Text(
                              'view profile',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Mute',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Block',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),

      endDrawer: SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Drawer(
            backgroundColor: Colors.white.withAlpha(30),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Others Features',
                      style: AppStyles.size16w600(),
                    ),
                  ),
                  10.verticalSpace,
                  Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, Routes.groupMessages);
                      },
                      title: Text('Groups Chat', style: AppStyles.size12w400()),
                      trailing: Icon(CupertinoIcons.group_solid,color: Colors.white,size: 20,),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {
                         Navigator.pop(context);
                      },
                      title: Text('Settings', style: AppStyles.size12w400()),
                    trailing: Icon(CupertinoIcons.settings_solid,color: Colors.white,size: 20,),
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
