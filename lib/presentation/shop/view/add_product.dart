import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/presentation/widgets/helper_widget.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('Add new product', style: AppStyles.size14w600()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check, size: 20, color: Colors.white),
          ),
          5.horizontalSpace,
        ],
      ),
      body: HelperWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Add Images', style: AppStyles.size14w600()),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CupertinoColors.systemPurple,
                      width: 0.5,
                    ),
                    color: Colors.white.withAlpha(30),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CupertinoColors.systemPurple,
                      width: 0.5,
                    ),
                    color: Colors.white.withAlpha(30),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CupertinoColors.systemPurple,
                      width: 0.5,
                    ),
                    color: Colors.white.withAlpha(30),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Colors.white, size: 30),
                ),
              ],
            ),
            Text('Max 5 images', style: AppStyles.size12w400()),
            10.verticalSpace,
            TextInputField(
              mainLabel: 'Product Name *',
              hintText: 'Enter product name',
            ),
            10.verticalSpace,
            Text('Category *', style: AppStyles.size14w600()),
            10.verticalSpace,
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  width: 80.w,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(30),
                    border: Border.all(
                      color: CupertinoColors.systemPurple,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Text('Shirt'),
                ),
                10.horizontalSpace,
                Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  width: 80.w,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(30),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Text('Shirt'),
                ),
                10.horizontalSpace,
                Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  width: 80.w,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(30),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Text('Pants'),
                ),
              ],
            ),
            10.verticalSpace,
            Text('Product Type *', style: AppStyles.size14w600()),
            10.verticalSpace,
            Row(
              children: [
                Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  onChanged: (value) {},
                ),
                Text('Physical Product', style: AppStyles.size14w400()),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  shape: CircleBorder(),
                  value: true,
                  onChanged: (value) {},
                ),
                Text('Digial Product', style: AppStyles.size14w400()),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  onChanged: (value) {},
                ),
                Text('Service', style: AppStyles.size14w400()),
              ],
            ),
            10.verticalSpace,
            TextInputField(
              mainLabel: 'Description *',
              hintText: 'Enter description',
              maxLines: null,
              minLines: 1,
            ),
            10.verticalSpace,
            TextInputField(mainLabel: 'Price *', hintText: 'Enter amount'),
            10.verticalSpace,
            Row(
              children: [
                Text('Stock Quantity *', style: AppStyles.size14w600()),
                const Spacer(),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white.withAlpha(30),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.remove),
                ),
                5.horizontalSpace,
                Text('1'),
                5.horizontalSpace,
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white.withAlpha(60),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            TextInputField(mainLabel: 'Discount', hintText: 'Enter discount%'),
                      10.verticalSpace,
            Text('Additional Settings', style: AppStyles.size14w600()),
            10.verticalSpace,
            Row(
              children: [
                Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  onChanged: (value) {},
                ),
                Text('Vip product', style: AppStyles.size14w400()),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  shape: CircleBorder(),
                  value: true,
                  onChanged: (value) {},
                ),
                Text('Featured product', style: AppStyles.size14w400()),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  onChanged: (value) {},
                ),
                Text('Limited Edition', style: AppStyles.size14w400()),
              ],
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
