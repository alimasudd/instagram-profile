import 'package:flutter/material.dart';
import 'widgets/info_item.dart';
import 'widgets/profile_picture.dart';
import 'widgets/story_item.dart';

class InstagramUI extends StatelessWidget {
  const InstagramUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Row(
          children: [
            Text(
              "Maemunah",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.black87)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined, color: Colors.black87),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black87),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                const ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Post", "345"),
                      InfoItem("Follower", "345"),
                      InfoItem("Following", "345"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Maemunah",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: const TextSpan(
                  text:
                      "Ingin menguasai dunia dengan kekuatan batin yang membara.",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                  children: [
                    TextSpan(
                      text: "#hashtag #instagram",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Hit me",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                  style:
                      OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black87),
                  ))),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(
                    title: "Story",
                    link: "https://picsum.photos/seed/picsum/200/300",
                  ),
                  StoryItem(
                    title: "Travel",
                    link: "https://picsum.photos/200/300?grayscale",
                  ),
                  StoryItem(
                    title: "Home",
                    link:
                        "https://picsum.photos/id/870/200/300?grayscale&blur=2",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box),
              label: "Post"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: "Activity"),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile"),
        ],
      ),
    );
  }
}
