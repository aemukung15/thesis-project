import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(70, 61, 7, 0.578),
      title: TabBar(onTap: (index) {}, tabs: const <Tab>[
        Tab(
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.person_pin_outlined),
        ),
        Tab(
          icon: Icon(Icons.camera_alt),
        ),
      ]),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
