import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_profile/presentations/providers/profile/profile_provider.dart';
import 'package:social_profile/presentations/widgets/height_width_container/custom_container.dart';
import 'package:social_profile/presentations/widgets/height_width_container/custom_sized_box.dart';

class ProfilePhotos extends StatelessWidget {
  const ProfilePhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 25,
        ),
        child: Consumer<ProfileProvider>(
          builder: (context, provider, child) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: provider.post.length,
              itemBuilder: (_, index) {
                final post = provider.post[index];
                return CustomContainer(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(post.imgSrc),
                        ),
                        title: Text(post.name),
                        subtitle: Text(post.hour),
                        trailing: const Icon(Icons.more_vert_rounded),
                      ),
                      Text(
                        post.postDes,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const CustomSizedBox(),
                      Container(
                        width: size.width,
                        height: size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              post.postImg,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
