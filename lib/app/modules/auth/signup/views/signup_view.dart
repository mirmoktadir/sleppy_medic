import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../../config/theme/my_fonts.dart';
import '../../../../../utils/constants.dart';
import '../../../../routes/app_pages.dart';
import '../../../../widgets/app_button.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  SignupView({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
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
              key: controller.signUpFormKey,
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
                    "Sign Up",
                    style: theme.textTheme.displaySmall,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 270.w,
                    child: Text(
                      "Sign up now for free and start meditating, and explore Medic.",
                      style: TextStyle(
                        fontSize: MyFonts.headline6TextSize,
                        color: theme.hintColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  TextFormField(
                    controller: nameController,
                    obscureText: false,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    onSaved: (value) {
                      nameController.text = value!;
                    },
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Name",
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
                  SizedBox(height: 30.h),
                  AppButton(
                    theme: theme,
                    text: 'SIGNUP',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: MyFonts.headline6TextSize,
                          color: theme.hintColor,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextButton(
                        onPressed: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        child: Text(
                          "Sign In",
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
