import 'package:flutter/material.dart';

import '../../../helpers/screen_size.dart/screen_size.dart';
import 'bottom_sheet_button.dart';

class PostBottomSheet extends StatelessWidget {
  const PostBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screen.height! * 0.5,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 3.0,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
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
            PostBottomSheetButton(
              icon: Icons.photo,
              name: 'Add a photo',
            ),
            PostBottomSheetButton(
              icon: Icons.video_collection_outlined,
              name: 'Take a video',
            ),
            PostBottomSheetButton(
              icon: Icons.meeting_room,
              name: 'Celebrate an occation',
            ),
            PostBottomSheetButton(
              icon: Icons.pages,
              name: 'Add a document',
            ),
            PostBottomSheetButton(
              icon: Icons.shopping_bag,
              name: 'Share that you\'re hiring',
            ),
            PostBottomSheetButton(
              icon: Icons.people,
              name: 'Find an expert',
            ),
            PostBottomSheetButton(
              icon: Icons.poll,
              name: 'Create a poll',
            ),
          ],
        ),
      ),
    );
  }
}
