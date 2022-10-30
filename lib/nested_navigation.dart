import 'package:flutter/material.dart';

class NestedNav extends StatefulWidget {
  const NestedNav({super.key});

  @override
  State<NestedNav> createState() => _NestedNavState();
}

class _NestedNavState extends State<NestedNav> {
  int myIndex = 0;
  List<Widget> widgetList = [
    const Text(
      'HOME',
      style: TextStyle(color: Colors.black),
    ),
    const Text('SETTINGS'),
    const Text('MORE'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BOTTOM NAVIGATION BAR'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Center(
        child: widgetList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        unselectedItemColor: Colors.white,
        fixedColor: Colors.white,
        // selectedIconTheme: IconThemeData(color: Colors.black),
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
