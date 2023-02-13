import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants.dart';

PreferredSize primaryAppBar(ThemeData theme) {
  return PreferredSize(
    preferredSize: Size.fromHeight(100.h),
    child: AppBar(
      toolbarHeight: 120.h,
      backgroundColor: theme.scaffoldBackgroundColor,
      title: Image.asset(
        AppImages.kLogo,
        height: 100.h,
        width: 100.w,
      ),
      leading: const Icon(Icons.menu, size: 35),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(Icons.people, size: 35),
        ),
      ],
      centerTitle: true,
    ),
  );
}
