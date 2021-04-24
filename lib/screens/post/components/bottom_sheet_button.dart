import 'package:flutter/material.dart';

class PostBottomSheetButton extends StatelessWidget {
  final IconData icon;
  final String name;

  const PostBottomSheetButton(
      {Key? key, required this.icon, required this.name})
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
          Text(
            name,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey.shade900.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
