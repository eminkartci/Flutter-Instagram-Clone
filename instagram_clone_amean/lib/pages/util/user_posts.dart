import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  const UserPosts({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Profile Photo
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                ),
                const SizedBox(
                  width: 10,
                ),
                // User Name
                Text(
                  this.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Icon(Icons.menu_open)
          ],
        ),
      ),

      // POST
      Container(
        height: 300,
        color: Colors.grey,
      ),

      // Buttons & Comments
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.favorite_border),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.share),
              ],
            ),
            const Icon(Icons.bookmark_add_outlined)
          ],
        ),
      ),
      // Liked By
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Row(children: const [
          Text("Liked by "),
          Text("etezer ", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("and "),
          Text("other 5", style: TextStyle(fontWeight: FontWeight.bold))
        ]),
      ),

      // Caption
      Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(
                text: name,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const TextSpan(
                text:
                    " Bu bir deneme postu caption yazisidir. Daha da uzun olmasi icin kasitli olarak bu cumle eklenmistir.")
          ]))),

      // Comments
    ]);
  }
}
