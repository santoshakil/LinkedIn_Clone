import 'package:flutter/material.dart';
import 'package:linkedin_clone/providers/reactions.dart';
import 'package:provider/provider.dart';

import '../../../../components/svg_icon.dart';

class LikeCommentButtons extends StatelessWidget {
  const LikeCommentButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var reactionProvider = Provider.of<ReactionProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              print('Liked');
              reactionProvider.like();
            },
            child: CardButton(lebel: 'Like', icon: 'likebw'),
          ),
          CardButton(lebel: 'Comment', icon: 'comment'),
          CardButton(lebel: 'Share', icon: 'share'),
          CardButton(lebel: 'Send', icon: 'send'),
        ],
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String icon, lebel;

  const CardButton({Key? key, required this.icon, required this.lebel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgIcon(name: icon, hight: 18.0),
        Text(lebel, style: TextStyle(fontSize: 12.0)),
      ],
    );
  }
}
