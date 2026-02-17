import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/profile/widgets/profile_header.dart';
import 'package:flutter_application_1/presentation/profile/widgets/social_links_button.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: const Color(0xFF1a1625),
          centerTitle: true,
          title: Text(
            'fahim2005',
            style: AppStyles.size16w600(),
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            GestureDetector(
              child: const Icon(CupertinoIcons.settings, color: Colors.white),
              onTap: () {
                Navigator.pushNamed(context, Routes.profileSettings);
              },
            ),
            10.horizontalSpace,
          ],
        ),

        // 🔥 Main Scroll Structure
        body: SafeArea(
          child: Container(
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
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  /// ===== PROFILE HEADER =====
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          15.verticalSpace,
                          ProfileHeader(),
                          10.verticalSpace,
                          Text(
                            'Biggest supporter of @creatorname',
                            style: AppStyles.size12w400(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          10.verticalSpace,
                          SocialLinksButton(),
                          10.verticalSpace,

                          /// ===== Buttons =====
                          Row(
                            children: [
                              Expanded(
                                child: PrimaryButton(
                                  label: 'Edit profile',
                                  height: 35.h,
                                  borderRadius: 6.r,
                                  backgroundColor: CupertinoColors.systemGrey
                                      .withAlpha(80),
                                  fontSize: 14.sp,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      Routes.editProfileRoute,
                                    );
                                  },
                                ),
                              ),
                              8.horizontalSpace,
                              Expanded(
                                child: PrimaryButton(
                                  label: 'Share profile',
                                  height: 35.h,
                                  borderRadius: 6.r,
                                  backgroundColor: CupertinoColors.systemGrey
                                      .withAlpha(80),
                                  fontSize: 14.sp,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          15.verticalSpace,
                        ],
                      ),
                    ),
                  ),

                  /// ===== Sticky TabBar =====
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _SliverTabBarDelegate(
                      const TabBar(
                        indicatorColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(
                            icon: Icon(
                              CupertinoIcons.square_grid_2x2_fill,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              CupertinoIcons.play_rectangle_fill,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              CupertinoIcons.lock_circle_fill,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },

              /// ===== Tab Views =====
              body: const TabBarView(
                dragStartBehavior: DragStartBehavior.down,
                children: [PostsTab(), ReelsTab(), PrivateContent()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// ================= POSTS TAB =================
class PostsTab extends StatelessWidget {
  const PostsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(bottom: 5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: 30,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.shopBanner),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

/// ================= REELS TAB =================
class ReelsTab extends StatelessWidget {
  const ReelsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AppImages.noPost2, height: 250, width: 250),
    );
  }
}

/// ================= PRIVATE TAB =================
class PrivateContent extends StatelessWidget {
  const PrivateContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.lock_circle_fill,
            size: 100,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          Text('Private photos and videos', style: AppStyles.size16w600()),
        ],
      ),
    );
  }
}

/// ================= Sticky Tab Delegate =================
class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverTabBarDelegate(this.tabBar);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: const Color(0xFF1a1625), child: tabBar);
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) => false;
}
