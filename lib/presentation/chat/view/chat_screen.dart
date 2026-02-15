import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Color(0xFF1a1625),
        elevation: 0,
        centerTitle: false,
        title: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, Routes.searchUserProfile);
          },
          child: Row(
            children: [
              Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(AppImages.user3)),
                ),
              ),
          
              5.horizontalSpace,
              Text(
                'Aryan Das',
                style: AppStyles.size16w600(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              5.horizontalSpace,
              Image.asset(AppIcons.blueCheck, height: 15.h, width: 15.w),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              CupertinoIcons.videocam_circle_fill,
              size: 35,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Icon(
              CupertinoIcons.mic_circle_fill,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20.0.w),
          height: double.infinity,
          width: double.infinity,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.verticalSpace,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(AppImages.user1),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          10.horizontalSpace,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.white.withAlpha(30),
                                  ),
                                  child: Text(
                                    '''Hi! I'm your AI assistant. I can help you create amazing images, answer questions about AI art, and provide tips for better prompts. How can I help you today?''',
                                    style: AppStyles.size14w400(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text('10:20 AM'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.white.withAlpha(30),
                                  ),
                                  child: Text(
                                    '''Hi! I'm your AI assistant. I can help you create amazing images, answer questions about AI art, and provide tips for better prompts. How can I help you today?''',
                                    style: AppStyles.size14w400(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text('10:21 AM'),
                              ],
                            ),
                          ),
                          10.horizontalSpace,
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(AppImages.user5),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(30),

                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: TextFormField(
                        maxLines: 10,
                        minLines: 1,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Type your Message...',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.doc_fill,
                        size: 24,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.mic,
                        size: 24,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.paperplane,
                        size: 24,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
