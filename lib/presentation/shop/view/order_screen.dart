import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/shop/widgets/order_details_card.dart';
import 'package:flutter_application_1/presentation/shop/widgets/store_status_bar.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Orders', style: AppStyles.size14w600()),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order Overview', style: AppStyles.size16w600()),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('24', style: AppStyles.size16w700()),
                      Text('Pending', style: AppStyles.size14w400()),
                      Text('Orders', style: AppStyles.size14w400()),
                    ],
                  ),
                ),
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('12', style: AppStyles.size16w700()),
                      Text('Processings', style: AppStyles.size14w400()),
                      Text('Orders', style: AppStyles.size14w400()),
                    ],
                  ),
                ),
                StoreStatusBar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('28', style: AppStyles.size16w700()),
                      Text('Completed', style: AppStyles.size14w400()),
                      Text('Today', style: AppStyles.size14w400()),
                    ],
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            Text('Recent Orders (156)', style: AppStyles.size16w600()),
            10.verticalSpace,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) {
                return 10.verticalSpace;
              },
              itemBuilder: (BuildContext context, int index) {
                return OrderDetailsCard(
                  status: 'Processing',
                  fontColor: Colors.yellow,
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
