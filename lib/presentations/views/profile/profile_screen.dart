import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_profile/core/constant/app_button_name.dart';
import 'package:social_profile/core/constant/app_string.dart';
import 'package:social_profile/core/constant/profile_tab_label.dart';
import 'package:social_profile/presentations/providers/profile/profile_provider.dart';
import 'package:social_profile/presentations/themes/app_colors.dart';
import 'package:social_profile/presentations/views/pages/profile/profile_photos.dart';
import 'package:social_profile/presentations/widgets/button/custom_elevated_button.dart';
import 'package:social_profile/presentations/widgets/height_width_container/custom_container.dart';
import 'package:social_profile/presentations/widgets/height_width_container/custom_sized_box.dart';
import 'package:social_profile/presentations/widgets/profile/education_element_widget.dart';
import 'package:social_profile/presentations/widgets/profile/friends_followe_widget.dart';
import 'package:social_profile/presentations/widgets/profile/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = "/profileScreen";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileHeader(size: size),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.031,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: CustomElevatedButton(
                          buttonName: AppButtonName.addFriend.get(),
                          onPressed: () {},
                        ),
                      ),
                      Text(
                        AppString.userName.get(),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const CustomSizedBox(),
                      Text(
                        AppString.userTitle.get(),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const CustomSizedBox(),
                      const FriendsFollowerWidget(
                        friends: "220",
                        follower: "150",
                      ),
                      const CustomSizedBox(),
                      CustomContainer(
                        child: Consumer<ProfileProvider>(
                          builder: (context, provider, child) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...provider.education.map((element) {
                                  return EducationElementWidget(
                                    icon: element.icon,
                                    label1: element.label1,
                                    label2: element.label2,
                                  );
                                }).toList(),
                                SizedBox(
                                  height: 24,
                                  width: size.width,
                                  child: CustomElevatedButton(
                                    buttonName: AppButtonName.editProfile.get(),
                                    primaryColor: AppColors.sSecondaryColor,
                                    radius: 5.0,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      const CustomSizedBox(),
                      DefaultTabController(
                        length: 3,
                        child: Column(
                          children: [
                            TabBar(
                              indicatorSize: TabBarIndicatorSize.label,
                              labelColor: AppColors.sTextSecondaryColor,
                              unselectedLabelColor: Colors.black,
                              // indicatorColor: Colors.yellow,
                              // overlayColor:
                              //     MaterialStateProperty.all(Colors.black),

                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    fontSize: 14,
                                  ),

                              tabs: [
                                Tab(text: ProfileTabLabel.photo.get()),
                                Tab(text: ProfileTabLabel.videos.get()),
                                Tab(text: ProfileTabLabel.stories.get()),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.88,
                              child: TabBarView(
                                children: [
                                  ChangeNotifierProvider.value(
                                    value: ProfileProvider(),
                                    child: const ProfilePhotos(),
                                  ),
                                  Text(ProfileTabLabel.videos.get()),
                                  Text(ProfileTabLabel.stories.get()),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
