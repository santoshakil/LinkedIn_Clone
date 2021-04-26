import 'package:flutter/material.dart';
import 'package:linkedin_clone/providers/reactions.dart';
import 'package:provider/provider.dart';

import '../../../../components/svg_icon.dart';

class ReactionsComments extends StatelessWidget {
  const ReactionsComments({
    Key? key,
    required this.reactions,
  }) : super(key: key);

  final String reactions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgIcon(name: 'like'),
              SvgIcon(name: 'heart'),
              Text(
                '  ' + Provider.of<ReactionProvider>(context).likes.toString(),
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey.shade900.withOpacity(0.9),
                ),
              ),
              Spacer(),
              Text(
                '56' + '  comments',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey.shade900.withOpacity(0.9),
                ),
              )
            ],
          ),
          Divider(color: Colors.grey.shade900.withOpacity(0.3))
        ],
      ),
    );
  }
}
