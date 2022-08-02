import 'package:flutter/material.dart';
import 'package:social_profile/core/constant/app_assets.dart';
import 'package:social_profile/presentations/themes/app_colors.dart';
import 'package:social_profile/presentations/widgets/profile/camera_button.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
            size.width * 0.031,
            size.height * 0.008,
            size.width * 0.031,
            size.height * 0.00,
          ),
          height: size.height * 0.25,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: NetworkImage(
                AppAssets.coverPhoto.get(),
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Center(
                      child: Image.asset(
                        "assets/icons/align_right.png",
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.07),
                  CameraButton(onTap: () {}),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -1.0,
          child: Container(
            width: size.width,
            height: size.height * 0.03,
            decoration: const BoxDecoration(
              color: AppColors.sBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
          ),
        ),
        Positioned(
          left: size.width * 0.031,
          bottom: -size.height * 0.05,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 100,
                width: 105,
                decoration: BoxDecoration(
                  color: AppColors.sDefaultColor,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      AppAssets.profilePhoto.get(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: size.height * 0.03,
                right: size.width * 0.06,
                child: CameraButton(
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
