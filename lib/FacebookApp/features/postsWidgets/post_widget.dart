import 'package:flutter/material.dart';

import '../../core/theming/colors/facebook_app_colors.dart' show FacebookAppColors;

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.postProfileImage,
    required this.postImage,
    required this.postName,
    required this.postTime,
  });

  final String postProfileImage;
  final String postName;
  final String postTime;
  final String postImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(postProfileImage),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 4),

                    Row(
                      children: [
                        Text(
                          postTime,
                          style: TextStyle(
                            color: FacebookAppColors.greyColor,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.public,
                          size: 13,
                          color: FacebookAppColors.greyColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ],
          ),
        ),

        Image.asset(postImage, width: double.infinity, fit: BoxFit.contain),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.comment_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_outlined),
                  ),
                ],
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
