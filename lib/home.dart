import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text("Instagram"),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: () => {}, icon: Icon(Icons.favorite_border_rounded)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.message_outlined))
        ],
      ),
      body: ListView(children: getFeed()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_sharp),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        unselectedItemColor: Colors.white30,
      ),
    );
  }

  List<Widget> getFeed() {
    List<Widget> data = [];

    for (var i = 0; i < 3; i++) {
      data.add(Container(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLe1RdhBGRvOTWuXB64zitkaVmFiFQnhzQ1FMdvMOb1rrG1U-CRVFk_o3B9B8tMjH-kdI&usqp=CAU",
                    width: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "lalalalisa_m",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            //แถบ2
            SizedBox(
              height: 10,
            ),
            Image.network(
                "https://blackpinkupdate.com/wp-content/uploads/2019/08/BLACKPINK-Lisa-Instagram-Update-21-August-2019-Dance-Video.jpg"),
            SizedBox(
              height: 10,
            ),

            //แถบ3
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.mode_comment_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.near_me_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            //แถบ 4
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Liked by ",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Benhann ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "and ",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "1,111,111 others",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //แถบ 5
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "lalalalisa_m ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Helloooooo",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //แถบ 6
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "2 days ago",
                  style: TextStyle(color: Colors.white38, fontSize: 10),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ));
    }
    return data;
  }
}
