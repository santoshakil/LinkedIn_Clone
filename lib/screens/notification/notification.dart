import 'package:flutter/material.dart';
import 'package:linkedin_clone/providers/notifications.dart';
import 'package:provider/provider.dart';

import '../home/components/head/home_head.dart';

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
          itemBuilder: (context, i) =>
              Provider.of<NotificationProvider>(context).notification[i],
        ),
      ],
    );
  }
}
