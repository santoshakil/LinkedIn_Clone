import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/selected_screen.dart';
import '../screens/post/post.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      elevation: 5.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: Provider.of<SelectedScreen>(context).index,
      onTap: (i) => i != 2
          ? Provider.of<SelectedScreen>(context, listen: false).change(i)
          : Navigator.push(
              context, MaterialPageRoute(builder: (context) => PostScreen())),
    );
  }

  List<BottomNavigationBarItem> get items => [
        navBarItem(title: 'Home', icon: Icons.home),
        navBarItem(title: 'My Network', icon: Icons.grid_on_rounded),
        navBarItem(title: 'Post', icon: Icons.add_box_rounded),
        navBarItem(title: 'Notifications', icon: Icons.notifications),
        navBarItem(title: 'Jobs', icon: Icons.shopping_bag_rounded),
      ];

  BottomNavigationBarItem navBarItem({
    required String title,
    required IconData icon,
  }) {
    return BottomNavigationBarItem(
      label: title,
      icon: Icon(icon),
    );
  }
}
