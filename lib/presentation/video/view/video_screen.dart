import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final PageController pageController = PageController();

  // Network video URLs
  final List<String> videoList = [
    'https://www.pexels.com/download/video/34661916/',
    'https://www.pexels.com/download/video/30682365/',
    'https://www.pexels.com/download/video/35864697/',
  ];

  final List<VideoPlayerController> controllers = [];

  @override
  void initState() {
    super.initState();

    // Initialize controllers for all network videos
    for (var videoUrl in videoList) {
      final controller = VideoPlayerController.network(videoUrl)
        ..initialize().then((_) => setState(() {}))
        ..setLooping(true);
      controllers.add(controller);
    }

    // First video auto play
    controllers.first.play();
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          scrollDirection: Axis.vertical,
          itemCount: videoList.length,
          onPageChanged: (index) {
            for (int i = 0; i < controllers.length; i++) {
              if (i == index) {
                controllers[i].play();
              } else {
                controllers[i].pause();
              }
            }
          },
          itemBuilder: (context, index) {
            final controller = controllers[index];
            return Stack(
              children: [
                // Video Player
                Center(
                  child: controller.value.isInitialized
                      ? FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: controller.value.size.width,
                            height: controller.value.size.height,
                            child: VideoPlayer(controller),
                          ),
                        )
                      : SpinKitCircle(color: CupertinoColors.activeOrange),
                ),
                // Play/Pause Button
                Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.value.isPlaying
                            ? controller.pause()
                            : controller.play();
                      });
                    },
                    child: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54,
                      ),
                      child: Icon(
                        controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Right side icons (like, comment, share)
                Positioned(
                  bottom: 80,
                  right: 10,
                  child: Column(
                    children: [
                      Icon(CupertinoIcons.heart, size: 30, color: Colors.white),
                      Text('1.2K', style: AppStyles.size12w400()),
                      20.verticalSpace,
                      Icon(
                        CupertinoIcons.chat_bubble,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text('300', style: AppStyles.size12w400()),
                      20.verticalSpace,
                      Icon(
                        CupertinoIcons.paperplane,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text('Share', style: AppStyles.size12w400()),
                    ],
                  ),
                ),
                // Left bottom info (profile, subscribe, description)
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: CupertinoColors.activeOrange,
                                width: 2.0,
                              ),
                              image: DecorationImage(
                                image: AssetImage(AppImages.user1),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          5.horizontalSpace,
                          Text('Alex Alex', style: AppStyles.size12w400()),
                          5.horizontalSpace,
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 3,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                'Subscribe',
                                style: AppStyles.size12w400(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      SizedBox(
                        width: 320.w,
                        child: Text(
                          'This is a description for video ${index + 1}',
                          style: AppStyles.size12w400(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
