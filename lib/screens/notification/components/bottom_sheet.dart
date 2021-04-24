import 'package:flutter/material.dart';

import '../../../helpers/screen_size.dart/screen_size.dart';
import 'bottom_sheet_button.dart';

class NotificationBottomSheet extends StatelessWidget {
  const NotificationBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screen.height! * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              height: 35.0,
              thickness: 7.0,
              indent: Screen.width! * 0.42,
              endIndent: Screen.width! * 0.42,
              color: Colors.grey,
            ),
            BottomSheetButton(
              icon: Icons.delete,
              name: 'Delete',
              des: 'Delete the notification',
            ),
            BottomSheetButton(
              icon: Icons.cancel,
              name: 'Unfollow',
              des: 'Unfollow this sender',
            ),
            BottomSheetButton(
              icon: Icons.notifications_off,
              name: 'Turn Off',
              des: 'Turn off this types of notification',
            ),
            BottomSheetButton(
              icon: Icons.settings,
              name: 'View Settings',
              des: 'View all off your Notification Settings',
            ),
          ],
        ),
      ),
    );
  }
}
