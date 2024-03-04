import 'package:flutter/material.dart';
import 'package:myproject_travel/components/UserInfo/user_info_card.dart';

class UserInfo extends StatelessWidget {

  // Define user information constants
  static const String user = "Apichai MATT";
  static const String email = "apichaiyesfam123@gmail.com";
  static const String phone = "0-123-456-789";
  static const String location = "Bangkok, Thailand";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/Pang.jpg'),
            ),
            Text(
              user, // Use user constant
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Inter",
              ),
            ),
            Text(
              "User Information",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Inter",
              ),
            ),
            InfoCard(
                text: user,
                icon: Icons.supervised_user_circle_rounded,
                onPressed: () async {}),
            InfoCard(
                text: location,
                icon: Icons.location_city,
                onPressed: () async {}),
            InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
            InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/Home.jpg',
              width: 23,
              height: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/Heart.jpg',
              width: 23,
              height: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/User.jpg',
              width: 23,
              height: 20,
            ),
            label: '',
          ),
          // Add more items if needed
        ],
      ),
    );
  }
}