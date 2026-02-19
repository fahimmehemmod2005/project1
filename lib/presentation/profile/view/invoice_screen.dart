import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constansts/app_icons.dart';
import 'package:flutter_application_1/core/constansts/app_images.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text('Payment and invoice', style: AppStyles.size14w400()),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(30),
                borderRadius: BorderRadius.circular(5.0.r),
              ),
              child: Text('Download PDF', style: AppStyles.size12w400()),
            ),
          ),
          10.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('All items', style: AppStyles.size14w400()),
            10.verticalSpace,
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10.0),
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
                          borderRadius: BorderRadius.circular(10.0.r),
                          border: Border.all(color: Colors.white, width: 0.5),
                          image: DecorationImage(
                            image: AssetImage(AppImages.shirt),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      15.horizontalSpace,
                      Flexible(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  flex: 10,
                                  child: Text(
                                    'Nike',
                                    style: AppStyles.size14w400(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                5.horizontalSpace,
                                Flexible(
                                  child: Image.asset(
                                    AppIcons.blueCheck,
                                    height: 10.h,
                                    width: 10.w,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Blue shoes of nikee',
                              style: AppStyles.size14w400(),
                            ),
                            Text(
                              'Size: L - Color: Red - Qty: 1',
                              style: AppStyles.size12w400(color: Colors.grey),
                            ),
                            Text('\$300', style: AppStyles.size14w400()),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          '3',
                          style: AppStyles.size14w400(),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            10.verticalSpace,
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(30),
            borderRadius: BorderRadius.circular(10.0.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Summary', style: AppStyles.size16w400()),
              10.verticalSpace,
              average(title: 'Subtotal:', subtitle: '\$799.0'),
              10.verticalSpace,
              average(title: 'Shipping Fee:', subtitle: '\$799.0'),
              10.verticalSpace,
              average(title: 'Tax Fee:', subtitle: '\$799.0'),
              10.verticalSpace,
              const Divider(),
              10.verticalSpace,
              average(title: 'Total:', subtitle: '\$799.0'),
            ],
          ),
        ),
      ),
    );
  }

  Row average({String? title, String? subtitle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? '', style: AppStyles.size14w400()),
        10.horizontalSpace,
        Text(subtitle ?? '', style: AppStyles.size14w400()),
      ],
    );
  }
}
