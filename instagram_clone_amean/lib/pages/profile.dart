import 'package:flutter/material.dart';
import 'package:instagram_clone_amean/pages/util/account_tab.dart';
import 'package:instagram_clone_amean/pages/util/bubble_stories.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  // Final
  final List stories = [
    "story1",
    "story2",
    "story3",
    "story4",
    "story5",
    "story6"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // User PP
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[300], shape: BoxShape.circle)),

                    // Like Follower Folloe
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Text(
                                "4",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              Text("Posts")
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "934",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              Text("Follower")
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "52",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              Text("Following")
                            ],
                          )
                        ],
                      ),
                    )

                    // Posts
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "eminkartci",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.edit),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                      "Girisimci bir elektrik elektronik muhendisiyim. Bos zamanlarimda instagram clone yaparim."),
                ),
                const Text(
                  "www.eminkartci.com",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text("Posts")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text("Reels")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text("Friends")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return BubbleStory(username: stories[index]);
                  },
                )),
          ),
          const TabBar(tabs: [
            Tab(
                icon: Icon(
              Icons.grid_3x3_outlined,
            )),
            Tab(
              icon: Icon(Icons.video_call),
            ),
            Tab(
              icon: Icon(Icons.shop),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ]),
          const Expanded(
              child: TabBarView(children: [
            AccountTab(),
            AccountTab(),
            AccountTab(),
            AccountTab()
          ]))
        ],
      )),
    );
  }
}
