import 'package:flutter/foundation.dart';

class ReactionProvider with ChangeNotifier {
  int likes = 12376;
  bool isLiked = false;

  void like() {
    if (!isLiked) {
      likes++;
      isLiked = !isLiked;
      notifyListeners();
    } else {
      likes--;
      isLiked = !isLiked;
      notifyListeners();
    }
    notifyListeners();
  }
}
