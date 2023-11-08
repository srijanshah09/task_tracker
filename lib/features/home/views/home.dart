import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/state_controllers/user_controller.dart';

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
  var local_count = 0.obs;
  final controller = Get.put(User());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text App'),
      ),
      endDrawer: const Drawer(),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text('local counter : $local_count')),
            GetBuilder<User>(
              builder: (_) => Text(
                'clicks: ${controller.count}',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => controller.increment(),
        onPressed: () => local_count++,
        mini: true,
        child: const Icon(
          Icons.play_arrow_rounded,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
