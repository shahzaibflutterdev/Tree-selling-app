import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../constants/colors.dart';
import '../../../../controllers/signin_admin_cotroller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_widget.dart';
import '../../../widgets/custom_textfield.dart';



class SiginAdminView extends StatelessWidget {
  SiginAdminView({super.key});

  final controller = Get.put(SigninAdminCotroller());

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
                  SizedBox(height: 4.5.h),
                  CustomButton(
                    text: 'Sign In as Admin',
                    onTap: () {
                      // Get.toNamed(AppRoutes.dashboardView);
                    },
                  ),
                  SizedBox(height: 2.h),
                  CustomButton(
                    text: 'Sig In as User ',
                    color: AppColors.secondary,
                    splashColor: Colors.grey.withOpacity(0.5),
                    highlightColor: Colors.grey.withOpacity(0.1),
                    textColor: Colors.black,
                    isImage: true,
                    onTap: () => ()
                      // Get.toNamed(AppRoutes.signin),
                  ),
              ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
