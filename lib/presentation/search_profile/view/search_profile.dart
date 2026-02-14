import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/search_profile/view/widgets/suggested_creator_card.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_application_1/presentation/widgets/user_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchProfile extends StatefulWidget {
  const SearchProfile({super.key});

  @override
  State<SearchProfile> createState() => _SearchProfileState();
}

class _SearchProfileState extends State<SearchProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInputField(
              hintText: 'Search anyone',
              suffixIcon: CupertinoIcons.search,
            ),
            10.verticalSpace,
            Text('Suggested Creator', style: AppStyles.size14w400()),
            10.verticalSpace,
            SizedBox(
              height: 180.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, index) => 10.horizontalSpace,
                itemBuilder: (context, index) {
                  return SuggestedCreatorCard(
                    image: AppImages.user4,
                    name: 'Aryan',
                    bio: 'Enjoy every day with friends',
                    buttonTitle: 'Subscribe',
                    onPressed: () {},
                    viewProfielOnTap: () {
                      Navigator.pushNamed(context, Routes.searchUserProfile);
                    },
                  );
                },
              ),
            ),
            10.verticalSpace,
            Text('Public Creator', style: AppStyles.size14w400()),
            10.verticalSpace,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return UserCard(
                  image: AppImages.user1,
                  title: 'Alex',
                  subtitle: 'alex123',
                  buttonTitle: 'Subscribe',
                  onPressed: () {},
                  viewProfielOnTap: () {
                    Navigator.pushNamed(context, Routes.searchUserProfile);
                  },
                );
              },
            ),
            10.verticalSpace,
            10.verticalSpace,
            Text('Boardcast channels', style: AppStyles.size14w400()),
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
                  title: 'Entertainment Hub',
                  subtitle: 'This channel only for entertainment',
                  buttonTitle: 'Join',
                  onPressed: () {},
                  viewProfielOnTap: () {
                    Navigator.pushNamed(context, Routes.publicChannels);
                  },
                );
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
