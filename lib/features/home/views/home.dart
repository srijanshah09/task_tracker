import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_tracker/features/analytics/views/analytics_screen.dart';
import 'package:task_tracker/features/execution/views/execute_screen.dart';
import 'package:task_tracker/features/planning/views/planning_screen.dart';
import 'package:task_tracker/features/settings/views/settings_screen.dart';
import 'package:task_tracker/utils/colors.dart';
import 'package:task_tracker/utils/providers/user.dart';


final iconList = <IconData>[
  Icons.calendar_view_day_rounded,
  Icons.edit_calendar_rounded,
  Icons.add_circle_outline_rounded,
  Icons.notifications_active_rounded,
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _bottomNavIndex = 0;
  final controller = Get.put(User());

  List<Widget> bottomNavScreen = [
    const ExecuteScreen(),
    const PlanningScreen(),
    const AnalyticsScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      body: bottomNavScreen[_bottomNavIndex],
      extendBody: true,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: secondaryColor,
        icons: iconList,
        activeColor: Colors.white,
        inactiveColor: Colors.white.withOpacity(0.7),
        activeIndex: _bottomNavIndex,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        notchSmoothness: NotchSmoothness.smoothEdge,
        gapLocation: GapLocation.none,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
