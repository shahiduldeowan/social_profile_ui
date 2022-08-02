import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:social_profile/core/constant/app_string.dart';
import 'package:social_profile/presentations/themes/app_colors.dart';
import 'package:social_profile/presentations/views/profile/profile_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const routeName = "/";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).pushNamed(ProfileScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Shimmer.fromColors(
              baseColor: AppColors.sPrimaryColor,
              highlightColor: AppColors.sTextSecondaryColor,
              period: const Duration(seconds: 2),
              child: Text(
                AppString.name.get(),
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Text(
              AppString.title.get(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
