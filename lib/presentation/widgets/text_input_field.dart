import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInputField extends StatelessWidget {
  final String? hintText;
  final String? mainLabel;
  final int? maxLines;
  final int? minLines;
  final bool obscureText;
  final IconData? suffixIcon;
  final double? borderRadius;
  final Color? fillColor;
  const TextInputField({
    super.key,
    this.hintText,
    this.maxLines = 1,
    this.minLines = 1,
    this.obscureText = false,
    this.suffixIcon,
    this.mainLabel, this.borderRadius,
     this.fillColor
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
              color: CupertinoColors.white,
            ),
          ),
        5.verticalSpace,
        TextFormField(
          maxLines: maxLines,
          minLines: maxLines,
          obscureText: obscureText,
          cursorColor: CupertinoColors.white,
          style: TextStyle(
            color: CupertinoColors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            suffixIcon: Icon(suffixIcon),
            hintText: hintText,
            hintStyle: TextStyle(
              color: CupertinoColors.systemGrey,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
            fillColor:fillColor ?? CupertinoColors.systemGrey.withAlpha(30),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius??12.r),
              borderSide: BorderSide(color: CupertinoColors.white, width: 0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
              borderSide: BorderSide(color: CupertinoColors.systemPurple, width: 0.5),
            )
          ),
        ),
      ],
    );
  }
}
