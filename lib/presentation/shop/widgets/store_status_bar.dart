import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreStatusBar extends StatelessWidget {
  const StoreStatusBar({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 90.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: CupertinoColors.systemPurple,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5.0.r),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF2d1b4e),
            Color(0xFF1a1330),
            Color(0xFF3d2463),
            Color(0xFF1f1635),
          ],
          stops: [0.0, 0.3, 0.7, 1.0],
        ),
      ),
     child: child,
    );
  }
}