
import 'package:flutter/material.dart';
import 'package:project1/FacebookApp/core/theming/colors/facebook_app_colors.dart';

class StoryWidget extends StatelessWidget {
  final String image;
  final String profileImage;

  const StoryWidget({
    super.key,
    required this.image,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: FacebookAppColors.backgroundColor,
              child: CircleAvatar(
                radius: 17,
                backgroundImage: AssetImage(profileImage),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
