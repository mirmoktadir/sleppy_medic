import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:sleepy_medic/utils/constants.dart';

import '../../../../../config/theme/my_fonts.dart';
import '../../../../routes/app_pages.dart';
import '../../../../widgets/app_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            reverse: true,
            child: Form(
              key: controller.loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80.h),
                  Center(
                    child: Image.asset(
                      AppImages.kLogo,
                      height: 100.h,
                      // width: 100.w,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Sign In",
                    style: theme.textTheme.displaySmall,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 270.w,
                    child: Text(
                      "Sign in now to access your exercises and saved music.",
                      style: TextStyle(
                        fontSize: MyFonts.headline6TextSize,
                        color: theme.hintColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  TextFormField(
                    controller: mailController,
                    obscureText: false,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    onSaved: (value) {
                      mailController.text = value!;
                    },
                    validator: (value) {
                      if (mailController.text.isEmpty) {
                        return "Email is required!";
                      }
                      return controller.validateEmail(value!);
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: BorderSide(
                          width: 1,
                          color: theme.primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: BorderSide(
                          width: 1,
                          color: theme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextFormField(
                    controller: passwordController,
                    obscureText: false,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    onSaved: (value) {
                      passwordController.text = value!;
                    },
                    validator: (value) {
                      if (passwordController.text.isEmpty) {
                        return "Password is required!";
                      }
                      return controller.validatePassword(value!);
                    },
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Password",
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: BorderSide(
                          width: 1,
                          color: theme.primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.r),
                        borderSide: BorderSide(
                          width: 1,
                          color: theme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  AppButton(
                    theme: theme,
                    text: 'LOGIN',
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                  ),
                  const SizedBox(height: 5),
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
        ),
      ),
    );
  }
}
