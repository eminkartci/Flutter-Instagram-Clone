import 'package:flutter/material.dart';
import 'package:instagram_clone_amean/pages/util/bubble_stories.dart';

class UserHomePage extends StatelessWidget {
  UserHomePage({Key? key}) : super(key: key);

  final List people = [
    "eminkartci",
    "akinanac",
    "ozturkoglu",
    "durmush",
    "ezgim"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // Stories
          Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStory(username: people[index]);
                },
              ))
        ],
      ),
    );
  }
}
