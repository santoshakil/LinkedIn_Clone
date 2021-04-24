import 'package:flutter/material.dart';

import '../../../../components/svg_icon.dart';

class MyDay extends StatelessWidget {
  const MyDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipRRect(
                child: SvgIcon(name: 'user', hight: 60.0),
                borderRadius: BorderRadius.circular(90.0),
              ),
              Icon(
                Icons.add_box_rounded,
                color: Colors.grey.shade900.withOpacity(0.7),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
