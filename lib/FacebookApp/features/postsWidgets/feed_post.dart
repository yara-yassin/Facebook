
import 'package:flutter/material.dart';
import 'package:project1/FacebookApp/features/postsWidgets/post_widget.dart';
import 'package:project1/FacebookApp/models/posts/post_data.dart';
import '../../core/theming/colors/facebook_app_colors.dart';

class FeedPostWidget extends StatelessWidget {
  const FeedPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      separatorBuilder: (context, index) {
        return const Divider(
          thickness: 3,
          color: FacebookAppColors.greyColor,
        );
      },
      itemBuilder: (context, index) {
        final post = posts[index];

        return PostWidget(
          postImage: post.postImage,
          postName: post.postName,
          postProfileImage: post.postProfileImage,
          postTime: post.postTime,
          isText: post.isText,
          textPost: post.textPost,
        );
      },
    );
  }
}
