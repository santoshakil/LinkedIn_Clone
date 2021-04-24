import 'package:flutter/material.dart';

import '../../../../components/svg_icon.dart';
import '../../../../helpers/screen_size.dart/screen_size.dart';

class CommentField extends StatelessWidget {
  const CommentField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100.withOpacity(0.4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            child: SvgIcon(name: 'profile', hight: 30.0),
          ),
          Container(
            height: 40.0,
            width: Screen.width! * 0.7,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Leave your thoughts here ...',
                filled: true,
                isDense: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Icon(Icons.camera_alt_outlined),
          ),
        ],
      ),
    );
  }
}
