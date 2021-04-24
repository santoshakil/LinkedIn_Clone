import 'package:flutter/material.dart';

import '../../../helpers/screen_size.dart/screen_size.dart';
import 'bottom_sheet.dart';
import 'head.dart';
import 'trail_buttons.dart';

class PostBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 0)).then((_) {
      showBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        builder: (context) => PostBottomSheet(),
      );
    });
    return Container(
      height: Screen.height,
      width: Screen.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(),
          Expanded(
            child: TextField(
              onTap: () => Navigator.pop(context),
              decoration: InputDecoration(
                hintText: 'What do you want to talk about?',
                enabled: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
          PostTrailButtons(),
        ],
      ),
    );
  }
}
