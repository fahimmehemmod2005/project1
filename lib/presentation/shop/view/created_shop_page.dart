import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatedShopPage extends StatefulWidget {
  const CreatedShopPage({super.key});

  @override
  State<CreatedShopPage> createState() => _CreatedShopPageState();
}

class _CreatedShopPageState extends State<CreatedShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HelperWidget(
        child: Column(
          children: [
            100.verticalSpace,
            Icon(
              Icons.check_circle_outline_rounded,
              color: Colors.white,
              size: 100,
            ),
            10.verticalSpace,
            Text('Shop Created Successfully!', style: AppStyles.size16w400()),
            10.verticalSpace,
            Text('🎉 Your Shop now live', style: AppStyles.size16w400()),
            20.verticalSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                color: Colors.white.withAlpha(30),
              ),
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Add your first product',
                  style: AppStyles.size14w400(),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.addProduct);
                },
              ),
            ),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                color: Colors.white.withAlpha(30),
              ),
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'View your shop',
                  style: AppStyles.size14w400(),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.myStores);
                },
              ),
            ),
            10.verticalSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.r),
                color: Colors.white.withAlpha(30),
              ),
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'go to home',
                  style: AppStyles.size14w400(),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.mainScreenRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
