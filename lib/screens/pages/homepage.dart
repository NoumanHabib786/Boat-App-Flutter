import 'package:boatapp/screens/pages/login_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/BottomPages/newhome.dart';
import 'favrote_screem.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _bottom = [
    NewHomeScreen(),
    FavroteScreen(),
    Center(
      child: Text("Bookmark"),
    ),
    Center(
      child: Text("person"),
    ),
  ];
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 20,
          onPressed: () {}, child: Icon(Icons.search, size: 30)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _bottom[select],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: select,
        onTap: (value) {
          setState(() {
            select = value;
          });
        },
        selectedItemColor: Colors.deepPurpleAccent,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("icons/home.svg"), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("icons/favrote.svg",theme: SvgTheme(currentColor: Colors.white)), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("icons/bookmark.svg"), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
