import 'package:firstappn11/screens/tab_box/calendar/calendar_screen.dart';
import 'package:firstappn11/screens/tab_box/chat/chat_screen.dart';
import 'package:firstappn11/screens/tab_box/home/home_screen.dart';
import 'package:firstappn11/screens/tab_box/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  int _currentIndex = 0;

  List<Widget> pages = const [
    HomeScreen(),
    CalendarScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurple,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            activeIcon: Icon(Icons.home, color: Colors.deepPurple),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color: Colors.grey),
            activeIcon: Icon(Icons.calendar_month, color: Colors.deepPurple),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.grey),
            activeIcon: Icon(Icons.message, color: Colors.deepPurple),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            activeIcon: Icon(Icons.person, color: Colors.deepPurple),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
