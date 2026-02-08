import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class WidgetCountryPickerField extends StatelessWidget {
  final String? hintText;
  final String? mainLabel;
  final TextEditingController? controller;
  final String? Function(PhoneNumber?)? validator;

  const WidgetCountryPickerField({
    super.key,
    this.hintText,
    this.mainLabel,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (mainLabel != null)
          Text(
            mainLabel!,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        5.verticalSpace,
        IntlPhoneField(
          keyboardType: TextInputType.number,
          initialCountryCode: null,
          showCountryFlag: false,
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            fillColor: Colors.grey.withAlpha(50),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: Colors.white, width: 0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: Colors.amber, width: 0.5),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
