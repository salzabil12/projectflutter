import 'package:flutter/material.dart';

import '../widgets/profile_picture.dart';
import '../widgets/info_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "cinta", 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
            ),
            ),
            Icon(
              Icons.arrow_drop_down, 
              color: Colors.black,
              ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.add_alert_outlined, 
              color: Colors.black,
              ),
          ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.menu, 
              color: Colors.black,
              ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Posts", "12"),
                      InfoItem("Followers", "5793"),
                      InfoItem("Following", "157"),
                    ],
                  ),
                )
              ],
            ),
          )
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "cinta", 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text: "mata yg memandang rendah org lain adlh mata yg tdk layak memandang Rasulullah SAW.",
                style: TextStyle(
                  color: Colors.black, 
                )
                children: [
                  text: TextSpan(
                text: "mata yg memandang rendah org lain adlh mata yg tdk layak memandang Rasulullah SAW.",
                style: TextStyle(
                  color: Colors.black,
                  )
                 ),
               ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

