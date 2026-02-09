import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<dynamic> showWhiteModelBottomSheet({
  required BuildContext context,
  Gradient? gradient,
  Widget? child,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey.withAlpha(30),
              borderRadius: BorderRadius.circular(12.0.r),
              gradient: gradient,
            ),
            child: SingleChildScrollView(child: child),
          ),
        ),
      );
    },
  );
}
