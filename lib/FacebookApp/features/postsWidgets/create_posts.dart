import 'package:flutter/material.dart';

import '../../core/theming/colors/facebook_app_colors.dart';

class CreatePost extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        spacing: 12,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/profile_img.jpg",
            ),
          ),
          const Expanded(
            child: Text(
              "What's in Your Mind?",
              style: TextStyle(
                fontSize: 16,
                color: FacebookAppColors.greyColor,
              ),
            ),
          ),
          const Icon(
            Icons.photo_library,
            color:FacebookAppColors.greenColor,
            size: 27,
          ),
        ],
      ),
    );
  }
}