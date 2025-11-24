import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool isObscure;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final Color? suffixIconColor;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.maxLines,
    this.isObscure = false,
    this.suffixIcon,
    this.suffixIconColor, this.onSuffixIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      maxLines: maxLines ?? 1,
      cursorColor: Colors.black54,
      obscureText: isObscure,
      textAlignVertical: TextAlignVertical.center,
      obscuringCharacter: '✶',
      decoration: InputDecoration(
        hintText: hintText ,
        suffixIcon: suffixIcon ?? (onSuffixIconTap != null
            ? IconButton(
          icon: Icon(
            isObscure ? Icons.visibility_off : Icons.visibility,
            color: Colors.black38,
          ),
          onPressed: onSuffixIconTap,
        )
            : null),
        suffixIconColor: suffixIconColor,
        hintStyle: const TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: Color(0XFFecedee),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0XFFbbbcbc), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0XFFbbbcbc), width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0XFFbbbcbc), width: 1),
        ),
      ),
    );
  }
}
