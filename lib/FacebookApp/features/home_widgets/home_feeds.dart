import 'package:flutter/material.dart';
import 'package:project1/FacebookApp/core/theming/colors/facebook_app_colors.dart';
import 'package:project1/FacebookApp/features/postsWidgets/create_posts.dart';
import 'package:project1/FacebookApp/features/postsWidgets/feed_post.dart';
import 'package:project1/FacebookApp/features/storiesWidgets/stories_row.dart';

class HomeFeedScreen extends StatelessWidget {
  const HomeFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CreatePost(),
        const Divider(thickness: 3, color: FacebookAppColors.greyColor),
        const StoriesSection(),
        const Divider(thickness: 3, color: FacebookAppColors.greyColor),
        const FeedPostWidget(),
      ],
    );
  }
}
