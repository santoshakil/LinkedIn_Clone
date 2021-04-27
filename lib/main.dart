import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'helpers/themes/theme.dart';
import 'providers/notifications.dart';
import 'providers/reactions.dart';
import 'providers/selected_screen.dart';
import 'screens/wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(uiStyle);
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<SelectedScreen>(
              create: (_) => SelectedScreen()),
          ChangeNotifierProvider<ReactionProvider>(
              create: (_) => ReactionProvider()),
          ChangeNotifierProvider<NotificationProvider>(
              create: (_) => NotificationProvider()),
        ],
        child: Wrapper(),
      ),
    ),
  );
}
