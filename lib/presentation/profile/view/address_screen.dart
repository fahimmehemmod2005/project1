import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text('Address', style: AppStyles.size14w600()),
      ),
      body: HelperWidget(
        child: Column(
          children: [
            Text('Your address', style: AppStyles.size16w400()),
            10.verticalSpace,
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(30),
                borderRadius: BorderRadius.circular(10.0.r),
                border: Border.all(color: Colors.white, width: 0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addressMethod(title: 'Street:', subtitle: '880 Market St'),
                  const Divider(),
                  addressMethod(title: 'City/Town:', subtitle: 'San Francisco'),
                  const Divider(),
                  addressMethod(title: 'State:', subtitle: 'California'),
                  const Divider(),
                  addressMethod(title: 'Zip/Postal Code:', subtitle: '94102'),
                  const Divider(),
                  addressMethod(title: 'Country:', subtitle: 'United States'),
                ],
              ),
            ),
            10.verticalSpace,
            TextInputField(mainLabel: 'Street', hintText: 'Enter Streen'),
            10.verticalSpace,
            TextInputField(mainLabel: 'Zip', hintText: 'Enter zip code'),
            10.verticalSpace,
            TextInputField(mainLabel: 'State', hintText: 'Enter your State'),
            10.verticalSpace,
            TextInputField(mainLabel: 'Country', hintText: 'Enter Streen'),
            10.verticalSpace,
            TextInputField(mainLabel: 'City/Town', hintText: 'Enter city-town'),
            10.verticalSpace,
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(30),
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                child: Text('Add Address', style: AppStyles.size14w600()),
              ),
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }

  Row addressMethod({String? title, String? subtitle}) {
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
