import 'package:flutter/material.dart';
import 'package:social_profile/presentations/themes/app_colors.dart';

class CameraButton extends StatelessWidget {
  final void Function() onTap;
  const CameraButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: AppColors.sIconColor,
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: const Icon(
          Icons.camera_alt_rounded,
          size: 17,
        ),
      ),
    );
  }
}
