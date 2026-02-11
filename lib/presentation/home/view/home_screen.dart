import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var story = [
  {'image': AppImages.user1, 'name': 'Alex1'},
  {'image': AppImages.user2, 'name': 'Alex2'},
  {'image': AppImages.user3, 'name': 'Alex3'},
  {'image': AppImages.user4, 'name': 'Alex4'},
  {'image': AppImages.user5, 'name': 'Alex5'},
  {'image': AppImages.user6, 'name': 'Alex6'},
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Cryptic',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: CupertinoColors.systemPurple,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(12.0.r),
                        ),
                        child: Text('Pro', style: AppStyles.size12w400()),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.currentPlanRoute);
                      },
                    ),
                    10.horizontalSpace,
                    GestureDetector(
                      child: Icon(CupertinoIcons.bell, size: 25.0),
                      onTap: () {},
                    ),
                  ],
                ),
                15.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(AppImages.user5),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: CupertinoColors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    CupertinoIcons.add,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        Text('your story', style: AppStyles.size12w400()),
                      ],
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: SizedBox(
                        height: 100.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: story.length,
                          separatorBuilder: (_, __) => 10.horizontalSpace,
                          itemBuilder: (context, index) {
                            final allstory = story[index];
                            return storyCard(
                              image: allstory['image'],
                              name: allstory['name'],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  separatorBuilder: (context, index) => 10.verticalSpace,
                  itemBuilder: (context, index) {
                    return PhotosCard(
                      profile: AppImages.user6,
                      name: 'Alex',
                      title: 'This is nature',
                      photo:
                          'https://i.pinimg.com/736x/11/30/cd/1130cd70d2cf986ea0d23341c9249ce5.jpg',
                      like: '12.5K',
                      comment: '450',
                      share: "1k",
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget storyCard({String? image, String? name}) {
    return Column(
      children: [
        CupertinoContextMenu(
          actions: [
            CupertinoContextMenuAction(
              trailingIcon: CupertinoIcons.profile_circled,
              child: Text('Profile', style: AppStyles.size12w400()),
            ),
            CupertinoContextMenuAction(
              trailingIcon: CupertinoIcons.chat_bubble,
              child: Text('Message', style: AppStyles.size12w400()),
            ),
            CupertinoContextMenuAction(
              isDestructiveAction: true,
              trailingIcon: CupertinoIcons.delete,
              child: Text('Remove', style: AppStyles.size12w400()),
            ),
          ],
          child: Container(
            height: 60.h,
            width: 60.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: CupertinoColors.systemPurple,
                width: 2.0.w,
              ),
              image: DecorationImage(
                image: AssetImage(image ?? ''),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(name ?? '', style: AppStyles.size12w400()),
      ],
    );
  }
}

class PhotosCard extends StatelessWidget {
  final String? profile;
  final String? name;
  final String? postDate;
  final String? title;
  final String? photo;
  final String? like;
  final String? comment;
  final String? share;

  const PhotosCard({
    super.key,
    this.profile,
    this.name,
    this.postDate,
    this.title,
    this.photo,
    this.like,
    this.comment,
    this.share,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(50),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(profile ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          name ?? 'user',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.size12w400(),
                        ),
                      ),
                    ),
                    5.horizontalSpace,
                    Image.asset(AppIcons.blueCheck, height: 15.h, width: 15.w),
                  ],
                ),
              ),

              8.horizontalSpace,

              Text('5 hour ago', style: AppStyles.size12w400()),
            ],
          ),
          10.verticalSpace,
          Text(title ?? '', style: AppStyles.size12w400()),
          10.verticalSpace,
          Center(
            child: CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  trailingIcon: CupertinoIcons.person_add,
                  child: Text('Follow', style: AppStyles.size12w400()),
                ),
                CupertinoContextMenuAction(
                  trailingIcon: CupertinoIcons.profile_circled,
                  child: Text('Profile', style: AppStyles.size12w400()),
                ),
                CupertinoContextMenuAction(
                  trailingIcon: CupertinoIcons.chat_bubble,
                  child: Text('Message', style: AppStyles.size12w400()),
                ),
              ],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(photo ?? '', fit: BoxFit.contain),
              ),
            ),
          ),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(CupertinoIcons.heart_fill, color: Colors.red),
              ),
              5.horizontalSpace,
              Text(like ?? '', style: AppStyles.size12w400()),
              20.horizontalSpace,
              GestureDetector(
                onTap: () {},
                child: Icon(CupertinoIcons.chat_bubble, color: Colors.white),
              ),
              5.horizontalSpace,
              Text(comment ?? '', style: AppStyles.size12w400()),
              20.horizontalSpace,
              GestureDetector(
                onTap: () {},
                child: Icon(CupertinoIcons.paperplane, color: Colors.white),
              ),
              5.horizontalSpace,
              Text(share ?? '', style: AppStyles.size12w400()),
            ],
          ),
        ],
      ),
    );
  }
}

Container buildContainer({required Widget child}) => Container(
  padding: EdgeInsets.all(15.0),
  width: double.infinity,
  decoration: BoxDecoration(
    color: CupertinoColors.systemGrey.withAlpha(30),
    borderRadius: BorderRadius.circular(12.0.r),
  ),
  child: child,
);
