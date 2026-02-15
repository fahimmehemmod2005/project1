import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/shop/widgets/people_review.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(.2),
            ),
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.heart,
              color: Colors.white,
              size: 20,
            ),
          ),
          5.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    height: 250.h,
                    width: 250.w,
                    child: Image.asset(AppImages.shirt, fit: BoxFit.cover),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: Color(0xff20272C),
                            borderRadius: BorderRadius.circular(10.0.r),
                            border: Border.all(
                              color: CupertinoColors.systemPurple,
                              width: 0.5,
                            ),
                          ),
                          child: Image.asset(
                            AppImages.shirt,
                            fit: BoxFit.cover,
                          ),
                        ),
                        10.horizontalSpace,
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: Color(0xff20272C),
                            borderRadius: BorderRadius.circular(10.0.r),
                          ),
                          child: Image.asset(
                            AppImages.shirtRed,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.orange.withAlpha(90),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Text('49%', style: AppStyles.size12w400()),
                ),
                10.horizontalSpace,
                Text(
                  '\$599',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    decoration: TextDecoration.lineThrough,
                  ),
                  textScaler: TextScaler.noScaling,
                ),
                10.horizontalSpace,
                Container(height: 1.h, width: 10.w, color: Colors.white),
                10.horizontalSpace,
                Text(
                  '\$399',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textScaler: TextScaler.noScaling,
                ),
                const Spacer(),
                Text('In stock', style: AppStyles.size14w400()),
              ],
            ),
            Text('Blue Shoes of nike', style: AppStyles.size16w600()),

            10.verticalSpace,
            Row(
              children: [
                Container(
                  width: 60,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(30),
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: CupertinoColors.systemPurple,width: 0.5)
                  ),
                  child: Center(child: Text('XL')),
                ),
                10.horizontalSpace,
                Container(
                  width: 60,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(30),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(child: Text('M')),
                ),
                  10.horizontalSpace,
                Container(
                  width: 60,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(30),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(child: Text('L')),
                ),
              ],
            ),
            10.verticalSpace,
            PrimaryButton(label: 'Buy Now', onPressed: (){
              Navigator.pushNamed(context, Routes.orderReview);
            }),
            10.verticalSpace,
            GestureDetector(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.shopBanner),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  Text('Nike shop beta', style: AppStyles.size12w400()),
                  5.horizontalSpace,
                  Image.asset(AppIcons.blueCheck, height: 15.h, width: 15.w),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withAlpha(30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0.r),
                      side: BorderSide(
                        color: CupertinoColors.systemPurple,width: 0.5
                      )
                    )
                  ),
                  onPressed: (){}, 
                  child: Text('Follow',style: AppStyles.size12w400(),)
                  )
                ],
              ),
            ),
            10.verticalSpace,
            Text('Reviews', style: AppStyles.size14w600(color: Colors.white)),

            5.verticalSpace,

            // ------------------ avatar side by side ----------------
            SizedBox(
              height: 38,
              child: Stack(
                children: [
                  _avatar(AppImages.user1, 0),
                  _avatar(AppImages.user2, 20),
                  _avatar(AppImages.user3, 40),
                  _avatar(AppImages.user4, 60),
                  _avatar(AppImages.user5, 80),
                  _avatar(AppImages.user6, 100),
                  _moreAvatar("15+", 120),
                ],
              ),
            ),

            // --------------- LinearProgressIndicator ----------
            Padding(padding: EdgeInsets.all(16), child: _ratingSummary()),
            // -------------- add review text button -------------
            GestureDetector(
              onTap: () {},
              child: Text(
                '+ Add Your Review',
                style: AppStyles.size16w400(
                  color: CupertinoColors.systemPurple,
                ),
              ),
            ),
            SizedBox(height: 20),

            // ------------------- rate this title ---------------------
            Text('Rate this', style: AppStyles.size20w600(color: Colors.white)),

            SizedBox(height: 3),
            // ------------------- rate this subtitle ---------------------
            Text(
              'Click according to your satisfaction.',
              style: AppStyles.size14w400(color: Color(0xffA5A5AB)),
            ),

            SizedBox(height: 12.h),
            // ------------------ star review ------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStarReview(Icons.star_outline, () {}),
                _buildStarReview(Icons.star_outline, () {}),
                _buildStarReview(Icons.star_outline, () {}),
                _buildStarReview(Icons.star_outline, () {}),
                _buildStarReview(Icons.star_outline, () {}),
              ],
            ),
            SizedBox(height: 20.h),

            Text('Description', style: AppStyles.size20w600()),
            Text(
              '''This is a product description of BATA brand shoes. There are more things that can be added but I’m''',
            style: AppStyles.size12w400(),
            ),

            SizedBox(height: 20.h),

            // ---------------- write a review -------------------
            Text(
              'Write a review',
              style: AppStyles.size20w600(color: Colors.white),
            ),

            SizedBox(height: 20),
            // ----------------- Text form field with max line ------------------
            TextInputField(
              hintText: 'Write a review',
              maxLines: null,
              minLines: 1,
            ),
            10.verticalSpace,
            PrimaryButton(label: 'Submit', backgroundColor: CupertinoColors.activeBlue,onPressed: () {}, height: 40.h),
            10.verticalSpace,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return PeopleReview(
                  users: AppImages.user1,
                  email: 'Example@gmail.com - 1day ago',
                  name: 'Alex',
                  comment:
                      'Incredible group of people and talented professionals',
                  ratings: '4.9',
                );
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white.withAlpha(30),
                ),
                onPressed: () {},
                icon: Icon(Icons.remove),
              ),
              5.horizontalSpace,
              Text('1'),
              5.horizontalSpace,
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white.withAlpha(60),
                ),
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
              const Spacer(),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withAlpha(30),
                  shape: RoundedRectangleBorder(                   
                    borderRadius: BorderRadius.circular(5.0.r),
                  ),
                ),
                onPressed: () {},
                icon: Icon(CupertinoIcons.shopping_cart, color: Colors.white),
                label: Text('Add to cart', style: AppStyles.size12w400()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStarReview(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(icon, size: 40, color: Colors.yellow),
    );
  }

  Widget _avatar(String image, double left) {
    return Positioned(
      left: left,
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.black,
        child: CircleAvatar(radius: 16, backgroundImage: AssetImage(image)),
      ),
    );
  }

  Widget _moreAvatar(String text, double left) {
    return Positioned(
      left: left,
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.blue,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Row _ratingSummary() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("4.8", style: AppStyles.size40w700(color: Colors.white)),
            Row(
              children: List.generate(
                5,
                (index) => Icon(Icons.star, color: Colors.orange, size: 18),
              ),
            ),

            SizedBox(height: 5),

            Text(
              "487 Reviews",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),

        SizedBox(width: 20),

        Expanded(
          child: Column(
            children: [
              _ratingBarRow(5, 0.9),
              _ratingBarRow(4, 0.6),
              _ratingBarRow(3, 0.3),
              _ratingBarRow(2, 0.15),
              _ratingBarRow(1, 0.10),
            ],
          ),
        ),
      ],
    );
  }

  Widget _ratingBarRow(int index, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text("$index", style: TextStyle(color: Colors.white, fontSize: 12)),
          SizedBox(width: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: value,
                minHeight: 8,
                backgroundColor: Colors.white,
                borderRadius: BorderRadius.circular(10),
                valueColor: AlwaysStoppedAnimation<Color>(
                  CupertinoColors.systemPurple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
