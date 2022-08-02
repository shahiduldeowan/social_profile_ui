import 'package:flutter/material.dart';
import 'package:social_profile/core/constant/app_assets.dart';
import 'package:social_profile/data/models/post_model.dart';
import 'package:social_profile/data/models/profile_education_model.dart';

class ProfileProvider extends ChangeNotifier {
  final List<ProfileEducationModel> _education = <ProfileEducationModel>[
    ProfileEducationModel("Founder and CEO at", "A to Z", Icons.shopping_bag),
    ProfileEducationModel(
        "Studied Computer Science at", "Harvard University", Icons.school),
    ProfileEducationModel("Live in", "Mumbai, Maharastra", Icons.home_filled),
    ProfileEducationModel("From", "Mumbai, India.", Icons.location_on),
  ];
  List<ProfileEducationModel> get education => _education;

  final List<PostModel> _post = <PostModel>[
    PostModel(
      name: "Devone Lane",
      hour: "1 hour ago",
      imgSrc: AppAssets.friendProfile.get(),
      postDes: "What a scence to watch",
      postImg: AppAssets.friendBeachPhoto.get(),
    ),
    PostModel(
      name: "Devone Lane",
      hour: "1 hour ago",
      imgSrc: AppAssets.friendProfile.get(),
      postDes: "What a scence to watch",
      postImg: AppAssets.friendBeachPhoto.get(),
    ),
    PostModel(
      name: "Devone Lane",
      hour: "1 hour ago",
      imgSrc: AppAssets.friendProfile.get(),
      postDes: "What a scence to watch",
      postImg: AppAssets.friendBeachPhoto.get(),
    ),
    PostModel(
      name: "Devone Lane",
      hour: "1 hour ago",
      imgSrc: AppAssets.friendProfile.get(),
      postDes: "What a scence to watch",
      postImg: AppAssets.friendBeachPhoto.get(),
    ),
    PostModel(
      name: "Devone Lane",
      hour: "1 hour ago",
      imgSrc: AppAssets.friendProfile.get(),
      postDes: "What a scence to watch",
      postImg: AppAssets.friendBeachPhoto.get(),
    ),
    PostModel(
      name: "Devone Lane",
      hour: "1 hour ago",
      imgSrc: AppAssets.friendProfile.get(),
      postDes: "What a scence to watch",
      postImg: AppAssets.friendBeachPhoto.get(),
    ),
    PostModel(
      name: "Devone Lane",
      hour: "1 hour ago",
      imgSrc: AppAssets.friendProfile.get(),
      postDes: "What a scence to watch",
      postImg: AppAssets.friendBeachPhoto.get(),
    ),
  ];

  List<PostModel> get post => _post;
}
