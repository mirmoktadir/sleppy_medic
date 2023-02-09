import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/my_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.theme,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final ThemeData theme;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 56.h,
      child: ElevatedButton(
        style: theme.elevatedButtonTheme.style,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: MyFonts.headline5TextSize),
        ),
      ),
    );
  }
}
