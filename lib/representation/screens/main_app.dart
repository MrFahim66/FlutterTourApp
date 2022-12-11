import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/representation/screens/messages_screen.dart';
import 'package:travel_app/representation/screens/profile_screen.dart';
import 'package:travel_app/representation/screens/schedule_screen.dart';
import 'package:travel_app/representation/screens/search_screen.dart';

import 'home_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  static const routeName = 'main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ScheduleScreen(),
    SearchScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
            child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            )),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg-nav-bar-bottom.png'),
                fit: BoxFit.fill),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: ColorPalette.primaryColor,
            unselectedItemColor: ColorPalette.textColor2,
            selectedFontSize: 13,
            unselectedFontSize: 13,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: SvgPicture.asset("assets/icons/home.svg"),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    "assets/icons/home.svg",
                    color: Colors.blue,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: SvgPicture.asset("assets/icons/calendar.svg"),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    "assets/icons/calendar.svg",
                    color: Colors.blue,
                  ),
                ),
                label: "Calendar",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/search.svg"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: SvgPicture.asset("assets/icons/chat.svg"),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: SvgPicture.asset("assets/icons/chat.svg",
                      color: Colors.blue),
                ),
                label: "Messages",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: SvgPicture.asset("assets/icons/profile.svg"),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: SvgPicture.asset("assets/icons/profile.svg",
                      color: Colors.blue),
                ),
                label: "Profile",
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ));
  }
}
