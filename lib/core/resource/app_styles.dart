import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  AppStyles._();

  static TextStyle size40w700({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 40.sp,
    fontWeight: FontWeight.w700,
    color: color,
  );
  static TextStyle size24w700({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: color,
  );
  static TextStyle size14w400({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle size14w600({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle size16w600({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle size16w700({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: color,
  );
  static TextStyle size16w400({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle size18w700({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: color,
  );
  static TextStyle size28w500({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
    color: color,
  );
  static TextStyle size20w600({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle size12w400({Color color = CupertinoColors.white}) => GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: color,
  );
}

extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
}
