import 'package:flutter/material.dart';
import 'package:task_tracker/utils/theme/theme.dart';
import 'package:task_tracker/utils/router/router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: ZAppTheme.lightTheme,
        darkTheme: ZAppTheme.darkTheme,
        routerConfig: ZRouter.router,
    );
  }
}
