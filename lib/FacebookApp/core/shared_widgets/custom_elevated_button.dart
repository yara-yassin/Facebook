// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../theming/colors/facebook_app_colors.dart';

typedef ButtonOnPressed = void Function();

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.buttonText,
    this.isOutlined = false,
    required this.onPressed,
  });

  String buttonText;
  bool isOutlined;
  ButtonOnPressed onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isOutlined
              ? FacebookAppColors.backgroundColor
              : FacebookAppColors.blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          foregroundColor: isOutlined
              ? FacebookAppColors.blueColor
              : FacebookAppColors.backgroundColor,
          side: isOutlined
              ? const BorderSide(color: FacebookAppColors.blueColor)
              : BorderSide.none,
        ),
        child: Text(
          buttonText,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ),
    );
  }
}
