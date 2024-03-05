import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myproject_travel/utils/styles.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: accent,
        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
        child: GNav( 
        
          tabBackgroundColor: Colors.white,
          padding: EdgeInsets.all(16),
          gap: 8, tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Favorite',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ]),
      ),
    );
  }
}
