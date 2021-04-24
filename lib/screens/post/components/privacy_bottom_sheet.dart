import 'package:flutter/material.dart';

import '../../../helpers/screen_size.dart/screen_size.dart';
import 'bottom_sheet_button.dart';

class PrivacyBottomSheet extends StatelessWidget {
  const PrivacyBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screen.height! * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13.0),
          topRight: Radius.circular(13.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              height: 35.0,
              thickness: 7.0,
              indent: Screen.width! * 0.42,
              endIndent: Screen.width! * 0.42,
              color: Colors.grey,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who can see this post?',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey.shade900.withOpacity(0.8),
                    ),
                  ),
                  Text(
                    '\nYour post will be visible on the feed, on your profile and in search results\n',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            PostBottomSheetButton(
              icon: Icons.public,
              name: 'Anyone',
            ),
            PostBottomSheetButton(
              icon: Icons.apps,
              name: 'Connections only',
            ),
          ],
        ),
      ),
    );
  }
}
