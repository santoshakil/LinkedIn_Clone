import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardHead extends StatelessWidget {
  const CardHead({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.designation,
    required this.time,
    required this.isPublic,
  }) : super(key: key);

  final String profileImage;
  final String name;
  final String designation;
  final String time;
  final bool isPublic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90.0),
              child: SvgPicture.asset(profileImage, height: 40.0),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey.shade900.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                designation,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    time + '  ',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    isPublic ? Icons.public : Icons.privacy_tip,
                    size: 12.0,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
