import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linkedin_clone/providers/reactions.dart';
import 'package:provider/provider.dart';

import 'helpers/themes/theme.dart';
import 'providers/selected_screen.dart';
import 'screens/wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(uiStyle);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => SelectedScreen()),
          ChangeNotifierProvider(create: (_) => ReactionProvider()),
        ],
        child: Wrapper(),
      ),
    ),
  );
}
