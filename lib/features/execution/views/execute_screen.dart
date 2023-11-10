import 'package:flutter/material.dart';

class ExecuteScreen extends StatelessWidget {
  const ExecuteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
