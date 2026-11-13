import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theming/colors/facebook_app_colors.dart';

typedef IconOnPressed = void Function();

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    super.key,
    this.icon,
    required this.onPressed,
    this.isMessenger = false,
  });

  IconData? icon;
  bool isMessenger;
  IconOnPressed onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: isMessenger
          ? FaIcon(FontAwesomeIcons.facebookMessenger)
          : Icon(icon, color: FacebookAppColors.blackColor, size: 27),
    );
  }
}
