import 'package:flutter/material.dart';
import 'package:social_profile/core/constant/app_string.dart';
import 'package:social_profile/presentations/widgets/height_width_container/custom_container.dart';
import 'package:social_profile/presentations/widgets/profile/custom_rich_text.dart';

class FriendsFollowerWidget extends StatelessWidget {
  const FriendsFollowerWidget({
    Key? key,
    required this.friends,
    required this.follower,
  }) : super(key: key);

  final String friends;
  final String follower;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomRichText(
            label1: friends,
            label2: AppString.friends.get(),
          ),
          CustomRichText(
            label1: follower,
            label2: AppString.following.get(),
          ),
        ],
      ),
    );
  }
}
