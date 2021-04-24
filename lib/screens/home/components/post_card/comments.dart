import 'package:flutter/material.dart';

import '../../../../components/svg_icon.dart';
import '../../../../helpers/screen_size.dart/screen_size.dart';

class AllComments extends StatelessWidget {
  const AllComments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: SvgIcon(name: 'pp', hight: 30.0),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Screen.width! * 0.8,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.grey.withOpacity(0.15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Monjurul Alam'),
                        Text(
                          '   .' + ' 1st',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Acounts, Admin and Commercial Officer at ASA Co.\n',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Text(
                      'This is the real Comment',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey.shade900.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Like',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  SvgIcon(name: 'like', hight: 12.0),
                  Text(' ' + '1' + '   |'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Reply',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
