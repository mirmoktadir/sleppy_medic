import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sleepy_medic/app/components/primary_appbar.dart';
import 'package:sleepy_medic/utils/constants.dart';

import '../../../../config/theme/my_fonts.dart';
import '../controllers/media_controller.dart';

class MediaView extends GetView<MediaController> {
  const MediaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: primaryAppBar(theme),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppImages.kAlbum),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              "Bolo keno emon hoy",
              style: theme.textTheme.headlineMedium,
            ),
            Text(
              "By: Habib Wahid",
              style: TextStyle(
                fontSize: MyFonts.headline6TextSize,
                color: theme.hintColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
