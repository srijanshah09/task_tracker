import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/utils/router/router.dart';
import 'package:task_tracker/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ZAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: ZAppTheme.darkTheme,
      title: 'Flutter Demo',
      initialRoute: "/",
      getPages: ZRouter.routes,
    );
  }
}
