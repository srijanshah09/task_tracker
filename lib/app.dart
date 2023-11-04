import 'package:flutter/material.dart';
import 'package:task_tracker/features/home/views/home.dart';
import 'package:task_tracker/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ZAppTheme.lightTheme,
      darkTheme: ZAppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}

