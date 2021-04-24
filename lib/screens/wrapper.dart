import 'package:flutter/material.dart';

import '../helpers/screen_size.dart/screen_size.dart';
import 'main/main_scaffold.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    //Auth will be checked here
    return MainScaffold();
  }
}
