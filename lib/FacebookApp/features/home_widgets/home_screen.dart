import 'package:flutter/material.dart';
import 'package:project1/FacebookApp/core/shared_widgets/custom_app_bar.dart';
import 'package:project1/FacebookApp/core/theming/colors/facebook_app_colors.dart';
import 'package:project1/FacebookApp/features/home_widgets/home_feeds.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: FacebookAppColors.backgroundColor,

        appBar: CustomAppBar(),

        body: const TabBarView(
          children: [
            HomeFeedScreen(),

            Center(child: Icon(Icons.ondemand_video, size: 60)),

            Center(child: Icon(Icons.storefront_outlined, size: 60)),

            Center(child: Icon(Icons.groups_outlined, size: 60)),

            Center(child: Icon(Icons.notifications_none, size: 60)),

            Center(child: Icon(Icons.person_outline, size: 60)),
          ],
        ),
      ),
    );
  }
}
