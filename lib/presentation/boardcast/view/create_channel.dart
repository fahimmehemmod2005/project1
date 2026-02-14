import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateChannel extends StatefulWidget {
  const CreateChannel({super.key});

  @override
  State<CreateChannel> createState() => _CreateChannelState();
}

class _CreateChannelState extends State<CreateChannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Create Channle', style: AppStyles.size14w400()),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.addPeople);
            },
            icon: Icon(Icons.person_add, color: Colors.white),
          ),
          5.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170.0.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                color: Colors.grey.withAlpha(50),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.camera_circle,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Text('Channel Banner', style: AppStyles.size14w400()),
            10.verticalSpace,
            TextInputField(mainLabel: 'Name', hintText: 'Channel Name'),
            10.verticalSpace,
            TextInputField(
              mainLabel: 'Bio',
              hintText: 'Whats on your mind',
              maxLines: null,
              minLines: 1,
            ),
            10.verticalSpace,
            Text('Privacy Settings', style: AppStyles.size14w400()),
            Row(
              children: [
                Expanded(
                  child: SwitchListTile(
                    value: true,
                    onChanged: (value) {},
                    title: Text('Public', style: AppStyles.size12w400()),
                  ),
                ),
                Expanded(
                  child: SwitchListTile(
                    value: false,
                    onChanged: (value) {},
                    title: Text('Private', style: AppStyles.size12w400()),
                  ),
                ),
              ],
            ),
            Text('Approval', style: AppStyles.size14w400()),
            SwitchListTile(
              value: true,
              onChanged: (value) {},
              title: Text('Approve by admin', style: AppStyles.size12w400()),
            ),
            SwitchListTile(
              value: false,
              onChanged: (value) {},
              title: Text('Anyone can join', style: AppStyles.size12w400()),
            ),
            10.verticalSpace,
            PrimaryButton(label: 'Create Channel', onPressed: (){})
          ],
        ),
      ),
    );
  }
}
