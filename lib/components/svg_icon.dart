import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String name;
  final double hight;

  const SvgIcon({Key? key, required this.name, this.hight = 13.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SvgPicture.asset('assets/$name.svg', height: hight),
    );
  }
}
