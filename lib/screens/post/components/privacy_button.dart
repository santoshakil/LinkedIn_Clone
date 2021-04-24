import 'package:flutter/material.dart';

import 'privacy_bottom_sheet.dart';

class PostPrivacyButton extends StatelessWidget {
  const PostPrivacyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => PrivacyBottomSheet(),
      ),
      child: Container(
        margin: EdgeInsets.all(7.0),
        padding: EdgeInsets.symmetric(horizontal: 7.0),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: [
            Icon(Icons.public, color: Colors.grey, size: 15.0),
            Text(
              ' ' + 'Anyone',
              style: TextStyle(
                color: Colors.grey.shade900.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
