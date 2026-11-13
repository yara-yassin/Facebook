import 'package:flutter/material.dart';

import '../../core/theming/colors/facebook_app_colors.dart';

class HomeTabs extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: FacebookAppColors.blueColor,
      indicatorWeight: 3,
      labelColor: FacebookAppColors.blueColor,
      unselectedLabelColor: FacebookAppColors.greyColor,
      tabs: [
        Tab(icon: Icon(Icons.home_filled, size: 30)),
        Tab(icon: Icon(Icons.ondemand_video_sharp, size: 30)),
        Tab(icon: Icon(Icons.storefront_outlined, size: 30)),
        Tab(icon: Icon(Icons.person, size: 30)),
        Tab(icon: Icon(Icons.notifications_none_sharp, size: 30)),
        Tab(
          icon: CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_img.jpg"),
          ),
        ),
      ],
    );
  }
}
