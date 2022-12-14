import 'package:flutter/material.dart';

class menuscreen extends StatefulWidget {
  const menuscreen({Key? key}) : super(key: key);

  @override
  State<menuscreen> createState() => _menuscreenState();
}

class _menuscreenState extends State<menuscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          SizedBox(
            height: 80,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('images1/abhishek_image_2.jpeg'),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Abhishek  ",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 100),
          sidebar(Icons.home, "Home"),
          SizedBox(height: 30),
          sidebar(Icons.mail, "Mail"),
          SizedBox(height: 30),
          sidebar(Icons.person, "Profile"),
          SizedBox(height: 30),
          sidebar(Icons.send, "Text"),
          SizedBox(height: 30),
          sidebar(Icons.logout, "logout"),
        ],
      ),
    );
  }
}

Widget sidebar(IconData icon, String text) {
  return Container(
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        )
      ],
    ),
  );
}
