import 'package:flutter/material.dart';
import 'package:social_profile/presentations/themes/app_colors.dart';

class CustomRichText extends StatelessWidget {
  final String label1;
  final String label2;
  const CustomRichText({
    Key? key,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "$label1 ",
        style: Theme.of(context).textTheme.headline5!.copyWith(
              color: AppColors.sPrimaryColor,
            ),
        children: [
          TextSpan(
            text: label2,
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
