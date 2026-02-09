import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_application_1/presentation/widgets/user_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriberScreen extends StatefulWidget {
  const SubscriberScreen({super.key});

  @override
  State<SubscriberScreen> createState() => _SubscriberScreenState();
}

class _SubscriberScreenState extends State<SubscriberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.transparent,
        centerTitle: true,
        title: Text('Subscribers', style: AppStyles.size16w600()),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInputField(
                hintText: 'Search anyone',
                suffixIcon: CupertinoIcons.search,
              ),
              10.verticalSpace,
              Text('All subscriber', style: AppStyles.size12w400()),
              10.verticalSpace,
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) => 10.verticalSpace,
                  itemBuilder: (context, index) {
                    return UserCard(
                      image: AppImages.user1,
                      title: 'Alex',
                      subtitle: 'alex123',
                      buttonTitle: 'Message',
                      onPressed: () {},
                    );
                  },
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
