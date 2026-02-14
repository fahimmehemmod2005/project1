import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_application_1/presentation/widgets/widget_country_picker_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Icon(Icons.check),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          10.horizontalSpace,
        ],
        title: Text('Edit profile', style: AppStyles.size16w600()),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.user5),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -10,
                    child: IconButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CupertinoColors.systemGrey,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.camera_fill,
                        size: 20,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            Center(
              child: Text(
                'Edit profile picture',
                style: AppStyles.size12w400(),
              ),
            ),
            10.verticalSpace,
            TextInputField(mainLabel: 'Name', hintText: 'Enter your name'),
            10.verticalSpace,
            TextInputField(mainLabel: 'Email', hintText: 'Enter your email'),
            10.verticalSpace,
            WidgetCountryPickerField(
              mainLabel: 'Number',
              hintText: 'Enter Your Number',
            ),
            TextInputField(
              mainLabel: 'Username',
              hintText: 'Enter your username',
            ),
            10.verticalSpace,
            TextInputField(
              maxLines: null,
              mainLabel: 'Bio',
              hintText: 'How you feeling today',
            ),
            10.verticalSpace,
            TextInputField(
              mainLabel: 'Location',
              hintText: 'Enter your location',
            ),
            Text('0/150', style: AppStyles.size12w400()),
            10.verticalSpace,
            Text('Select Gender', style: AppStyles.size12w400()),
            5.verticalSpace,
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 0.5),
                borderRadius: BorderRadius.circular(10.0.r)
              ),
              child: ListTile(
                title: Text('Male', style: AppStyles.size14w600()),
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return CupertinoActionSheet(
                        actions: [
                          CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text('male'),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text('female'),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text('custom'),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text('not to say'),
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            10.verticalSpace,
            GestureDetector(
              child: Text('Add links', style: AppStyles.size16w600()),
              onTap: () {
                Navigator.pushNamed(context, Routes.socialLinkRoute);
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
