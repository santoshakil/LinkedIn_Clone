import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/svg_icon.dart';
import '../../../helpers/screen_size.dart/screen_size.dart';
import '../../../providers/notifications.dart';
import 'bottom_sheet.dart';

class NotificationCard extends StatelessWidget {
  final int index;

  const NotificationCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.cyan.shade100.withOpacity(0.3),
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgIcon(name: 'pp', hight: 30.0),
          ),
          Container(
            width: Screen.width! * 0.7,
            child: Text(
              'Here the notification\'s body will be appered. Again, Here the notification\'s body will be appered.',
              style: TextStyle(
                color: Colors.grey.shade900.withOpacity(0.9),
                fontSize: 15.0,
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              var provider =
                  Provider.of<NotificationProvider>(context, listen: false);
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                barrierColor: Colors.grey.shade900.withOpacity(0.3),
                builder: (context) => Provider.value(
                  value: provider,
                  child: NotificationBottomSheet(index: index),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
