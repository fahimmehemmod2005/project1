import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resource/app_styles.dart';
import 'package:flutter_application_1/core/routes/route_manager.dart';
import 'package:flutter_application_1/presentation/widgets/primary_button.dart';
import 'package:flutter_application_1/presentation/widgets/text_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopCreate extends StatefulWidget {
  const ShopCreate({super.key});

  @override
  State<ShopCreate> createState() => _ShopCreateState();
}

class _ShopCreateState extends State<ShopCreate> {
  int currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,

        title: Text(
          'Create Shop',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1a1625),
              Color(0xFF0d0a15),
              Color(0xFF1e1433),
              Color(0xFF0a0812),
            ],
            stops: [0.0, 0.3, 0.7, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              children: [
                10.verticalSpace,
                StepIndicator(currentStep: currentStep, totalSteps: 3),
                10.verticalSpace,
                Expanded(child: _getStepPage()),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (currentStep > 1)
                Expanded(
                  child: PrimaryButton(
                    height: 35.h,
                    fontSize: 12.sp,
                    borderRadius: 10.r,
                    backgroundColor: Colors.white.withAlpha(30),
                    label: 'Back',
                    onPressed: () {
                      setState(() {
                        currentStep--;
                      });
                    },
                  ),
                )
              else
                const Spacer(),
              if (currentStep > 1) SizedBox(width: 16.w),
              Expanded(
                child: PrimaryButton(
                  height: 35.h,
                  fontSize: 12.sp,
                  borderRadius: 10.r,
                  label: currentStep == 3 ? 'Create Shop' : 'Next',
                  onPressed: () {
                    if (currentStep < 3) {
                      setState(() {
                        currentStep++;
                      });
                    } else {
                      Navigator.pushNamed(context, Routes.createdShopPage);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getStepPage() {
    switch (currentStep) {
      case 1:
        return _buildStepOne();
      case 2:
        return _buildStepTwo();
      case 3:
        return _buildStepThree();
      default:
        return const SizedBox();
    }
  }

  Widget _buildStepOne() {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextInputField(mainLabel: 'Shop Name *', hintText: 'Enter shop name'),
          10.verticalSpace,
          TextInputField(
            mainLabel: 'Descripton *',
            hintText: 'Tell about your shop',
            maxLines: null,
            minLines: 1,
          ),
          10.verticalSpace,
          TextInputField(
            mainLabel: 'Contect Number *',
            hintText: 'Enter your number',
          ),
          10.verticalSpace,
          TextInputField(mainLabel: 'Email *', hintText: 'Enter your email'),
          10.verticalSpace,
          TextInputField(
            mainLabel: 'Location *',
            hintText: 'Enter your Locaiton',
          ),
          10.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildStepTwo() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shop Logo',
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
          SizedBox(height: 8.h),
          Container(
            height: 150.h,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF7c3aed)),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_photo_alternate,
                    color: Colors.grey,
                    size: 40.sp,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Upload Logo',
                    style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),

          Text(
            'Shop Categories',
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
          Row(
            children: [
              Checkbox(
                shape: CircleBorder(),
                value: true,
                onChanged: (value) {},
              ),
              Text('Merchandise', style: AppStyles.size14w400()),
            ],
          ),
          Row(
            children: [
              Checkbox(
                shape: CircleBorder(),
                value: true,
                onChanged: (value) {},
              ),
              Text('Digital Product', style: AppStyles.size14w400()),
            ],
          ),
          Row(
            children: [
              Checkbox(
                shape: CircleBorder(),
                value: false,
                onChanged: (value) {},
              ),
              Text('Art & Design', style: AppStyles.size14w400()),
            ],
          ),
          Row(
            children: [
              Checkbox(
                shape: CircleBorder(),
                value: false,
                onChanged: (value) {},
              ),
              Text('Fitness & Helth', style: AppStyles.size14w400()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStepThree() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Methods',
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Checkbox(
                shape: CircleBorder(),
                value: true,
                onChanged: (value) {},
              ),
              Text('Credit', style: AppStyles.size14w400()),
            ],
          ),
          Row(
            children: [
              Checkbox(
                shape: CircleBorder(),
                value: false,
                onChanged: (value) {},
              ),
              Text('Visa', style: AppStyles.size14w400()),
            ],
          ),
          Row(
            children: [
              Checkbox(
                shape: CircleBorder(),
                value: false,
                onChanged: (value) {},
              ),
              Text('Master', style: AppStyles.size14w400()),
            ],
          ),

          10.verticalSpace,
          TextInputField(mainLabel: 'Card Holder Name', hintText: 'Enter name'),
          10.verticalSpace,
          TextInputField(
            mainLabel: 'Card Number',
            hintText: '0000 - 0000 - 0000 - 0000',
          ),
          10.verticalSpace,
          Row(
            children: [
              Expanded(
                child: TextInputField(
                  mainLabel: 'Expiry Date',
                  hintText: '00/00',
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: TextInputField(mainLabel: 'CVV', hintText: '00/00'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const StepIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalSteps * 2 - 1, (index) {
        if (index.isEven) {
          int stepNumber = (index ~/ 2) + 1;
          bool isCompleted = stepNumber < currentStep;
          bool isCurrent = stepNumber == currentStep;

          return Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isCompleted || isCurrent
                  ? CupertinoColors.systemPurple
                  : Colors.transparent,
              border: Border.all(
                color: isCompleted || isCurrent
                    ? CupertinoColors.transparent
                    : CupertinoColors.systemGrey,
                width: 2,
              ),
            ),
            child: Center(
              child: isCompleted
                  ? const Icon(Icons.check, color: Colors.white, size: 16)
                  : Text(
                      '$stepNumber',
                      style: AppStyles.size14w400(
                        color: isCurrent ? Colors.white : Colors.grey,
                      ),
                    ),
            ),
          );
        } else {
          int stepBefore = (index ~/ 2) + 1;
          bool isCompleted = stepBefore < currentStep;
          return Container(
            width: 40,
            height: 2,
            color: isCompleted ? CupertinoColors.systemPurple : Colors.grey,
          );
        }
      }),
    );
  }
}
