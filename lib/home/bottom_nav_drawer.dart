import 'package:flutter/material.dart';

import 'home_main_screen.dart';

class BottomNaviDrawer extends StatefulWidget {
  const BottomNaviDrawer({Key? key}) : super(key: key);

  @override
  State<BottomNaviDrawer> createState() => _BottomNaviDrawerState();
}

class _BottomNaviDrawerState extends State<BottomNaviDrawer> {
  int drawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: const Icon(Icons.add_rounded), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home_rounded
                  // color: Colors.white,
                  ),
              onPressed: () {
                setState(() {
                  drawerIndex = 0;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.person_rounded),
              onPressed: () {
                setState(() {
                  drawerIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
      body: Center(child: buildbody(drawerIndex)),
    );
  }

  buildbody(int drawerIndex) {
    switch (drawerIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const Text("profile");
    }
    return const SizedBox();
  }
}
