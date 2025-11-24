import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../constants/colors.dart';
import '../../../../controllers/signin_controller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_widget.dart';
import '../../../widgets/custom_textfield.dart';


class LoginScreen extends StatelessWidget {
LoginScreen({super.key});

  final controller = Get.put(SigninController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w).copyWith(top: 6.h),
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png', height: 15.h),
                  SizedBox(height: 5.h),
                  CustomTextWidget(
                    text: 'Sign In Your Account',
                    style: CustomTextStyles.heading1,
                  ),

                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'Email',
                        style: CustomTextStyles.button,
                      ),
                    ],
                  ),
                  SizedBox(height: 0.5.h),
                  CustomTextField(hintText: 'example@gmail.com'),

                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'Password',
                        style: CustomTextStyles.button,
                      ),
                    ],
                  ),
                  SizedBox(height: 0.5.h),
                  Obx(
                        () => CustomTextField(
                      hintText: '••••••••',
                      isObscure: !controller.passwordVisibility.value,
                      onSuffixIconTap: controller.togglePasswordVisibility,
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextWidget(
                        text: 'Forget Password?',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  CustomButton(
                    text: 'Sign In',
                    onTap: () {
                      // Get.to(page);
                    },
                  ),
                  SizedBox(height: 2.h),

                  CustomButton(
                    text: 'Continue with Google',
                    color: AppColors.primary,
                    textColor: Colors.black,
                    splashColor: Colors.grey.withOpacity(0.5),
                    highlightColor: Colors.grey.withOpacity(0.1),
                    isImage: true,
                    image: 'assets/images/google.svg',
                    onTap: () => ()
                    // Get.offAllNamed(AppRoutes.dashboardView),
                  ),
                  SizedBox(height: 12.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        text: 'Don\'t have an account? ',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textSecondary,
                      ),
                      GestureDetector(
                        // onTap: () => Get.toNamed(AppRoutes.signup),
                        child: CustomTextWidget(
                          text: 'SIGN UP',
                          color: AppColors.primary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
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
