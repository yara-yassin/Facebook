import 'package:flutter/material.dart';

import '../theming/colors/facebook_app_colors.dart';
import 'custom_icon_button.dart';
import '../../features/home_widgets/home_tabs.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const new({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(108);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: FacebookAppColors.backgroundColor,
      title: Image.asset("assets/images/facebook.png", width: 165, height: 40),
      actions: [
        CustomIconButton(icon: Icons.add_circle_outlined, onPressed: () {}),
        CustomIconButton(icon: Icons.search, onPressed: () {}),
        CustomIconButton(isMessenger: true, onPressed: () {}),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: HomeTabs(),
      ),
    );
  }
}
