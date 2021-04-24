import 'package:flutter/material.dart';

import '../../../../components/svg_icon.dart';
import '../../../../helpers/screen_size.dart/screen_size.dart';

class HomeHead extends StatelessWidget {
  const HomeHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ClipRRect(
              child: SvgIcon(name: 'user', hight: 25.0),
              borderRadius: BorderRadius.circular(90.0),
            ),
          ),
          Container(
            height: 40.0,
            width: Screen.width! * 0.7,
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.qr_code_scanner),
                fillColor: Colors.grey.withOpacity(0.2),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.message, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
