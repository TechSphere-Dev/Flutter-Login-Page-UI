import 'package:flutter/material.dart';
import 'package:flutter_course/Subscreens/Catagories.dart';
import 'package:flutter_course/Subscreens/HomeScreen.dart';
import 'package:flutter_course/Subscreens/SearchScreen.dart';
import 'package:flutter_course/Subscreens/chatScreen.dart';
import 'package:flutter_course/Subscreens/profilescreen.dart';
import 'package:flutter_course/widgets/drawer.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    CatagoryScreen(),
    ChatScreen(),
    seachScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: _screens[_selectedIndex],

      bottomNavigationBar: SafeArea(
        top: false,
        child: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          index: _selectedIndex,
          items: const [
            CurvedNavigationBarItem(
              child: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.grid_view,),
              label: 'Catagories',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.messenger_outline_outlined),
              label: 'Message',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.perm_identity),
              label: 'Personal',
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
