import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:sleepy_medic/app/routes/app_pages.dart';
import 'package:sleepy_medic/config/theme/my_fonts.dart';
import 'package:sleepy_medic/utils/constants.dart';

import '../../../widgets/app_button.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.kBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 180.h,
                width: 230.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.kLogo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "WELCOME",
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "Do meditation,Stay focused.",
                style: theme.textTheme.titleLarge,
              ),
              Text(
                "Live a healthy life",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 130.h),
              AppButton(
                theme: theme,
                text: 'Login With Email',
                onPressed: () => Get.offAllNamed(Routes.LOGIN),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: MyFonts.headline6TextSize,
                      color: theme.hintColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.SIGNUP);
                    },
                    child: Text(
                      "Sign Up",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
