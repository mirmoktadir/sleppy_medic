import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:sleepy_medic/app/routes/app_pages.dart';
import 'package:sleepy_medic/utils/constants.dart';
import '../../../../config/theme/my_fonts.dart';
import '../../../components/primary_appbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: primaryAppBar(theme),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back,Mir!",
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "How are you feeling today ?",
                style: TextStyle(
                  fontSize: MyFonts.headline6TextSize,
                  color: theme.hintColor,
                ),
              ),
              SizedBox(height: 30.h),
              moods(),
              SizedBox(height: 30.h),
              media(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget moods() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: Colors.white,
              ),
              child: Image.asset(
                AppImages.kCalm,
              ),
            ),
            const SizedBox(height: 5),
            const Text("Calm"),
          ],
        ),
        Column(
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: Colors.white,
              ),
              child: Image.asset(
                AppImages.kRelax,
              ),
            ),
            const SizedBox(height: 5),
            const Text("Relax"),
          ],
        ),
        Column(
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: Colors.white,
              ),
              child: Image.asset(
                AppImages.kFocus,
              ),
            ),
            const SizedBox(height: 5),
            const Text("Focus"),
          ],
        ),
        Column(
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color: Colors.white,
              ),
              child: Image.asset(
                AppImages.kRelax,
              ),
            ),
            const SizedBox(height: 5),
            const Text("Anxious"),
          ],
        ),
      ],
    );
  }

  Widget media(ThemeData theme) {
    return SizedBox(
      height: 500.h,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              height: 200.h,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 215.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cardio Meditation",
                          style: TextStyle(
                            color: theme.scaffoldBackgroundColor,
                            fontSize: MyFonts.headline4TextSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Techniques, Benefits, and a Beginner’s How-To",
                          style: TextStyle(
                            color: theme.scaffoldBackgroundColor,
                            fontSize: MyFonts.headline6TextSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 170.w,
                          height: 56.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.scaffoldBackgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.MEDIA);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "watch now",
                                  style: TextStyle(
                                    fontSize: MyFonts.headline5TextSize,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Icon(IconlyBold.play, size: 22),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.kType1,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (ctx, _) {
            return SizedBox(height: 30.h);
          },
          itemCount: 4),
    );
  }
}
