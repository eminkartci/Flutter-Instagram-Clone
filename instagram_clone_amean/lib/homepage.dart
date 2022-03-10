import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text("Body Here !")),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Profıle")
          ],
        ));
  }
}
