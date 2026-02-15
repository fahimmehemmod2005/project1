import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/shop/widgets/order_details_card.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PendingPorduct extends StatefulWidget {
  const PendingPorduct({super.key});

  @override
  State<PendingPorduct> createState() => _PendingPorductState();
}

class _PendingPorductState extends State<PendingPorduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Pending Product', style: AppStyles.size14w600()),
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  status: 'Pending',
                  fontColor: Colors.red,
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
