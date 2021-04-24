import 'package:flutter/material.dart';

import '../../../../components/svg_icon.dart';

class LikeCommentButtons extends StatelessWidget {
  const LikeCommentButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardButton(lebel: 'Like', icon: 'likebw'),
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
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          SvgIcon(name: icon, hight: 18.0),
          Text(lebel, style: TextStyle(fontSize: 12.0)),
        ],
      ),
    );
  }
}
