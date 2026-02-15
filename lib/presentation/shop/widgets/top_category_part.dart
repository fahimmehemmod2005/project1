import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/shop/widgets/category_card.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCategoryPart extends StatelessWidget {
  const TopCategoryPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: CupertinoColors.systemPurple,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: AppStyles.size14w400().copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Unknown Pro',
                        style: AppStyles.size16w600().copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(.2),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.cartRoute);
                    },
                    icon: const Icon(
                      CupertinoIcons.shopping_cart,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(.2),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.wishlistRoute);
                    },
                    icon: const Icon(
                      CupertinoIcons.heart,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(.2),
                    ),
                    onPressed: () {
                    },
                    icon: const Icon(
                      CupertinoIcons.bars,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              Text(
                'Popular Categories',
                style: AppStyles.size14w600().copyWith(
                  color: Colors.white,
                ),
              ),
              10.verticalSpace,
              SizedBox(
                height: 90,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  separatorBuilder: (_, __) => 10.horizontalSpace,
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      image: AppIcons.dress,
                      name: 'Dress',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
    
        /// Search Field
        Positioned(
          bottom: -25,
          left: 20,
          right: 20,
          child: TextInputField(
            borderRadius: 50.r,
            fillColor: const Color(0xff20272C),
            hintText: 'Search in store',
            suffixIcon: CupertinoIcons.search_circle_fill,
          ),
        ),
      ],
    );
  }
}
