import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  final username;

  // ignore: use_key_in_widget_constructors
  const BubbleStory({required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(username)
        ],
      ),
    );
  }
}
