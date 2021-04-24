import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/nav_bar.dart';
import '../../providers/selected_screen.dart';
import '../home/home.dart';
import '../notification/notification.dart';

class MainScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = Provider.of<SelectedScreen>(context).screen;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: navigate(screen),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget navigate(Screens screen) {
    if (screen == Screens.Home) {
      return HomeScreen();
    } else if (screen == Screens.Notification) {
      return NotificationScreen();
    } else {
      return HomeScreen();
    }
  }
}
