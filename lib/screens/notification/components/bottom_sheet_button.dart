import 'package:flutter/material.dart';

class BottomSheetButton extends StatelessWidget {
  final IconData icon;
  final String name, des;

  const BottomSheetButton(
      {Key? key, required this.icon, required this.name, required this.des})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              icon,
              color: Colors.grey.shade900.withOpacity(0.7),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey.shade900.withOpacity(0.8),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(des),
            ],
          ),
        ],
      ),
    );
  }
}
