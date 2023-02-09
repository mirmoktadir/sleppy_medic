import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:sleepy_medic/utils/constants.dart';
import '../../../../config/theme/my_fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
              Row(
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
              ),
              SizedBox(height: 30.h),
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
