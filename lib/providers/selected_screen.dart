import 'package:flutter/foundation.dart';

class SelectedScreen with ChangeNotifier {
  Screens screen = Screens.Home;
  int index = 0;

  void change(int i) {
    index = i;
    notifyListeners();

    switch (i) {
      case 0:
        screen = Screens.Home;
        notifyListeners();
        break;
      case 1:
        screen = Screens.Network;
        notifyListeners();
        break;
      case 2:
        screen = Screens.Post;
        notifyListeners();
        break;
      case 3:
        screen = Screens.Notification;
        notifyListeners();
        break;
      case 4:
        screen = Screens.Jobs;
        notifyListeners();
        break;
    }
  }
}

enum Screens { Home, Network, Post, Notification, Jobs }
