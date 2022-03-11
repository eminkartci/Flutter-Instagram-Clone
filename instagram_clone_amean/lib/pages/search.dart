import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  child: Text(
                    "Search",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Center(child: Text("SEARCH")),
    );
  }
}
