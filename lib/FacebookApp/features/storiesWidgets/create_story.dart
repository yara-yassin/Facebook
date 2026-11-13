
import 'package:flutter/material.dart';
import 'package:project1/FacebookApp/core/theming/colors/facebook_app_colors.dart';

class CreateStoryWidget extends StatelessWidget {
  final String image;

  const CreateStoryWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 220,
      decoration: BoxDecoration(
        color: FacebookAppColors.backgroundColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: FacebookAppColors.lightGrey,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 5),

            const CircleAvatar(
              radius: 16,
              backgroundColor: FacebookAppColors.blueColor,
              child: Icon(
                Icons.add,
                color: FacebookAppColors.backgroundColor,
                size: 22,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'Create a Story',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
