import 'package:flutter/material.dart';

import 'card_button.dart';
import 'card_head.dart';
import 'comment_field.dart';
import 'comments.dart';
import 'reacions_comments.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.designation,
    required this.time,
    required this.isPublic,
    required this.post,
    required this.imageUrl,
    required this.reactions,
  }) : super(key: key);

  final String profileImage;
  final String name;
  final String designation;
  final String time;
  final bool isPublic;
  final String post;
  final String imageUrl;
  final String reactions;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: Colors.grey.withOpacity(0.3), thickness: 7.0),
          CardHead(
            profileImage: profileImage,
            name: name,
            designation: designation,
            time: time,
            isPublic: isPublic,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7.0, right: 10.0, bottom: 7.0),
            child: Text(post),
          ),
          Image.network(imageUrl, fit: BoxFit.fitWidth),
          ReactionsComments(reactions: reactions),
          LikeCommentButtons(),
          AllComments(),
          CommentField(),
        ],
      ),
    );
  }
}
