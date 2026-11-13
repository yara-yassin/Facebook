// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:project1/FacebookApp/core/theming/colors/facebook_app_colors.dart';

typedef Validator = String? Function(String?);
typedef OnVisibilityPressed = void Function();

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  Validator validator;
  final bool isPassword;
  final bool obscureText;
  OnVisibilityPressed? onVisibilityPressed;

  CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validator,
    this.isPassword = false,
    this.obscureText = false,
    this.onVisibilityPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: FacebookAppColors.lightGrey,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: FacebookAppColors.greyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: FacebookAppColors.blueColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: FacebookAppColors.redColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: FacebookAppColors.redColor),
        ),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: onVisibilityPressed,
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: FacebookAppColors.greyColor,
                ),
              )
            : null,
      ),
    );
  }
}
