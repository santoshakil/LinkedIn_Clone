import 'package:flutter/material.dart';

import '../home/components/head/home_head.dart';
import 'components/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: HomeHead(),
        ),
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, i) => NotificationCard(),
        ),
      ],
    );
  }
}
