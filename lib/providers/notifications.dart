import 'package:flutter/foundation.dart';
import 'package:linkedin_clone/screens/notification/components/notification_card.dart';

class NotificationProvider with ChangeNotifier {
  List<NotificationCard> notification = [
    NotificationCard(index: 0),
    NotificationCard(index: 1),
    NotificationCard(index: 2),
  ];

  remove(int index) {
    notification.removeAt(index);
    notifyListeners();
  }
}
