import 'package:flutter/material.dart';
import 'package:project1/FacebookApp/features/storiesWidgets/create_story.dart';
import 'package:project1/FacebookApp/features/storiesWidgets/story_widget.dart';
import 'package:project1/FacebookApp/models/stories/stories_data.dart';
import 'package:project1/FacebookApp/models/stories/story_model.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: stories.length + 1,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          if (index == 0) {
            return const CreateStoryWidget(
              image: "assets/images/profile_img.jpg",
            );
          }

          StoryModel story = stories[index - 1];

          return StoryWidget(
            image: story.image,
            profileImage: story.profileImage,
          );
        },
      ),
    );
  }
}
