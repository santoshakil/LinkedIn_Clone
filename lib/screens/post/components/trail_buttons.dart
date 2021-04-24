import 'package:flutter/material.dart';

import '../../../helpers/screen_size.dart/screen_size.dart';
import 'bottom_sheet.dart';

class PostTrailButtons extends StatelessWidget {
  const PostTrailButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          Container(
            width: Screen.width! * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.camera_alt, color: Colors.grey.shade700),
                Icon(Icons.video_collection, color: Colors.grey.shade700),
                Icon(Icons.photo, color: Colors.grey.shade700),
                GestureDetector(
                  onTap: () => showBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    builder: (context) => PostBottomSheet(),
                  ),
                  child: Icon(Icons.more_horiz, color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.message_outlined,
            color: Colors.grey.shade600,
            size: 16,
          ),
          Text(
            '  ' + 'Connections',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
