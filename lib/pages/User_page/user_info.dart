import 'package:flutter/material.dart';
import 'package:myproject_travel/components/UserInfo/user_info_card.dart';
import 'package:myproject_travel/pages/User_page/FavPlace_page.dart';
import 'package:myproject_travel/pages/User_page/home_page.dart';


class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  // Define user information constants
  static const String user = "Apichai MATT";
  static const String email = "apichaiyesfam123@gmail.com";
  static const String phone = "0-123-456-789";
  static const String location = "Bangkok, Thailand";

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FavoritePlace()));
        break;
      
    }
  }
  
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
              backgroundImage: AssetImage('accest/images/Pang.jpg'),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Customize as needed
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
