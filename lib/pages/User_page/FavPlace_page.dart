import 'package:flutter/material.dart';
import 'package:myproject_travel/components/FavPlace/CardFavPlace.dart';
import 'package:myproject_travel/components/FavPlace/LabelFavPlace.dart';
import 'package:myproject_travel/pages/User_page/home_page.dart';
import 'package:myproject_travel/pages/User_page/user_info.dart';


class FavoritePlace extends StatefulWidget {
  const FavoritePlace({Key? key}) : super(key: key);

  @override
  _FavoritePlaceState createState() => _FavoritePlaceState();
}

class _FavoritePlaceState extends State<FavoritePlace> {
  int _selectedIndex = 1; // Initialize with the index of FavoritePlace

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 2:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserInfo()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( 
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                Container(child: LabelFavPlace(),),
                Container(child: CardFavPlaces(),)
              ],
            ),
          ),
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
