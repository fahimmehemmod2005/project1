import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text('Stores', style: AppStyles.size14w600()),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
               minimumSize: Size(50.w, 40.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0.r),
                side: BorderSide(color: CupertinoColors.systemPurple),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, Routes.shopCreate);
            },
            child: Text('Create', style: AppStyles.size12w400()),
          ),
          10.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInputField(hintText: 'Search any store'),
            10.verticalSpace,
            Text('My Stores', style: AppStyles.size16w400()),
            10.verticalSpace,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return MyShopCard(
                  showVisitButton: false,
                  name: 'nikee',
                  onBodyTap: () {
                    Navigator.pushNamed(context, Routes.myStores);
                  },
                );
              },
            ),
            10.verticalSpace,
            Text('Public Stores', style: AppStyles.size16w400()),
            10.verticalSpace,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return MyShopCard(
                  showVisitButton: true,
                  name: 'Puma',
                  onVisitTap: () {
                     Navigator.pushNamed(context, Routes.publicStores);
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

class MyShopCard extends StatelessWidget {
  final String? name;
  final void Function()? onBodyTap;
  final void Function()? onVisitTap;
  final bool showVisitButton;
  const MyShopCard({
    super.key,
    this.onBodyTap,
    this.onVisitTap,
    this.showVisitButton = true,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onBodyTap,
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(30),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        child: Row(
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppImages.cover),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            10.horizontalSpace,
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          name ?? '',
                          style: AppStyles.size14w600(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      5.horizontalSpace,
                      Flexible(
                        child: Image.asset(
                          AppIcons.blueCheck,
                          height: 15.h,
                          width: 15.w,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'We have every shirts collectin in our store',
                    style: AppStyles.size12w400(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            if (showVisitButton)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    side: BorderSide(color: Colors.white, width: 0.5),
                  ),
                ),
                onPressed: onVisitTap,
                child: Text('Visit', style: AppStyles.size12w400()),
              ),
          ],
        ),
      ),
    );
  }
}
