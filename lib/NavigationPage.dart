import 'package:flutter/material.dart';
import 'package:profile_prototype/ProfilePage.dart';
import 'package:profile_prototype/SchoolPage.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex= 0 ;
  List _widgetoptions=[
    Text("index 0 : Home"),
    Text("index 1 : Business"),
   SchoolPage(),
   ProfilePage()
  ];
  void _0neItemTapped(int index){
    setState(() {
   _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaPI Social"),
      ),
      body: _widgetoptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business), label:'Business'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school), label: 'School'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), label: 'Profile'
          ),
        ],
        onTap: _0neItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
      ),

    );
  }
}
