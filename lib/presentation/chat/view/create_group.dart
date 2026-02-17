import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text('Create Group', style: AppStyles.size14w400()),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.addPeople);
            },
            icon: Icon(Icons.add, size: 30, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check, size: 30, color: Colors.white),
          ),
          10.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Group Photo', style: AppStyles.size14w600()),
            10.verticalSpace,
            Center(
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  border: Border.all(color: Colors.white, width: 0.5),
                  color: Colors.white.withAlpha(30),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            10.verticalSpace,
            TextInputField(
              mainLabel: 'Group Name',
              hintText: 'Enter group name',
            ),
            10.verticalSpace,
            TextInputField(
              mainLabel: 'Description',
              hintText: 'Whats in your mind',
              maxLines: null,
              minLines: 1,
            ),
            10.verticalSpace,
            Text(
              'Group Permission',
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            ),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                color: Colors.white.withAlpha(30),
              ),
              child: ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: true,
                  onChanged: (value) {},
                ),
                title: Text('All media', style: AppStyles.size14w400()),
              ),
            ),
            10.verticalSpace,
            Text(
              'Admin Approval',
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            ),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                color: Colors.white.withAlpha(30),
              ),
              child: ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  onChanged: (value) {},
                ),
                title: Text(
                  'Approve new member',
                  style: AppStyles.size14w400(),
                ),
              ),
            ),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                color: Colors.white.withAlpha(30),
              ),
              child: ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: true,
                  onChanged: (value) {},
                ),
                title: Text('Anyone can join', style: AppStyles.size14w400()),
              ),
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
