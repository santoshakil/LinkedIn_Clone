import 'package:flutter/material.dart';

import 'components/head/home_head.dart';
import 'components/head/my_day.dart';
import 'components/post_card/post_card.dart';

class HomeScreen extends StatelessWidget {
  final String imageUrl =
      'https://resources.workable.com/wp-content/uploads/2018/05/hiring_social_media_post2x.png';
  final String profileImage = 'assets/user.svg';
  final String name = 'Santo Shakil';
  final String designation = 'CEO';
  final String time = '8h';
  final String post = 'Here the post body will be appered.';
  final String reacions = '1223';
  final bool isPublic = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHead(),
        MyDay(),
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) => PostCard(
            profileImage: profileImage,
            name: name,
            designation: designation,
            time: time,
            isPublic: isPublic,
            post: post,
            imageUrl: imageUrl,
            reactions: reacions,
          ),
        ),
      ],
    );
  }
}
