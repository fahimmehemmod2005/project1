import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPeople extends StatefulWidget {
  const AddPeople({super.key});

  @override
  State<AddPeople> createState() => _AddPeopleState();
}

class _AddPeopleState extends State<AddPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('add people', style: AppStyles.size14w400()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check, color: Colors.white),
          ),
          5.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          children: [
            TextInputField(hintText: 'Search anyone'),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              separatorBuilder: (context, index) => 10.verticalSpace, 
              itemBuilder: (context, index) {
                return CheckboxListTile(
              value: true,
              onChanged: (value) {},
              title: Row(
                children: [
                  Container(
                    height: 30.h,
                    width: 30.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.user1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  5.horizontalSpace,
                  Text('Lisa', style: AppStyles.size16w400()),
                ],
              ),
            );
              }, 
              )
          ],
        ),
      ),
    );
  }
}
