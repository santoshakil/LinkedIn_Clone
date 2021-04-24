import 'package:flutter/material.dart';

import '../../../components/svg_icon.dart';
import 'privacy_button.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          SvgIcon(name: 'user', hight: 40.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '  ' + 'Santo Shakil',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.shade900.withOpacity(0.9),
                ),
              ),
              PostPrivacyButton(),
            ],
          ),
        ],
      ),
    );
  }
}
