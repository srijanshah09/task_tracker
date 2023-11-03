import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:task_tracker/utils/colors.dart';
import 'package:task_tracker/utils/theme/theme.dart';

final iconList = <IconData>[
  Icons.calendar_view_day_rounded,
  Icons.edit_calendar_rounded,
  Icons.add_circle_outline_rounded,
  Icons.notifications_active_rounded,
];

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // This widget is the root of your application.
  var _bottomNavIndex = 0; @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ZAppTheme.lightTheme,
      darkTheme: ZAppTheme.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text App'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 12,
          ),
          child: const Text(
            'Flutter Demo Home Page',
          ),
        ),
        endDrawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          mini: true,
          child: Icon(
            Icons.play_arrow_rounded,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor : darkBgColor2,
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.end,
          notchSmoothness: NotchSmoothness.defaultEdge,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }
}
