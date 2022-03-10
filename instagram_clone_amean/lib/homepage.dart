import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define selected index
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Different Pages to navigate
  final List<Widget> _subPages = [
    Center(child: Text("HOME")),
    Center(child: Text("SEARCH")),
    Center(child: Text("REELS")),
    Center(child: Text("SHOP")),
    Center(child: Text("PROFILE"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _subPages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.vibration), label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profıle")
          ],
        ));
  }
}
