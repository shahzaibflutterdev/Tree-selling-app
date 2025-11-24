import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants/colors.dart';
import 'custom_text_widget.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final bool? isImage;
  final String? image;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final Color? splashColor;
  final Color? highlightColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
    this.color, this.image, this.isImage, this.textColor, this.splashColor, this.highlightColor ,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 6.w
      ),
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 5.2.h,
        child: Material(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(30.sp),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(30.sp),
            splashColor: splashColor?? Colors.red.withOpacity(0.5),
            highlightColor: highlightColor?? Colors.red.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if(isImage == true)...[
                  SvgPicture.asset(
                    image.toString()
                  ),
                  SizedBox(width: 2.w,),
                ],
                CustomTextWidget(
                  text: text,
                  color: textColor?? Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
