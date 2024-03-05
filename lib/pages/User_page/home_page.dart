import 'package:flutter/material.dart';
import 'package:myproject_travel/components/Home_page/heading.dart';
import 'package:myproject_travel/components/Home_page/search.dart';
import 'package:myproject_travel/components/Home_page/label_section_pop.dart';
import 'package:myproject_travel/components/Home_page/card.dart';
import 'package:myproject_travel/components/Home_page/mainCategory.dart';
import 'package:myproject_travel/components/Home_page/hotel_section.dart';
import 'package:myproject_travel/components/Home_page/label_section_hotel.dart';
import 'package:myproject_travel/components/bottom_nav.dart';
import 'package:myproject_travel/pages/AboutGuide/guide_list.dart';
import 'package:myproject_travel/pages/User_page/FavPlace_page.dart';
import 'package:myproject_travel/pages/User_page/user_info.dart';
import 'package:myproject_travel/utils/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
     switch(index) {
    case 0:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
      break;
    case 1:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FavoritePlace()));
      break;
    case 2:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GuideListPage()));
      break;
      case 3:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserInfo()));
      break;
    default:
      break;
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: medium, top: 50, right: medium),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HeadingSection(),
                SizedBox(height: medium),
                const SearchSection(),
                SizedBox(height: medium),
                LabelSection(
                  text: 'Popular',
                  style: heading3,
                ),
                SizedBox(height: medium),
                const CardPoppular(),
                SizedBox(height: medium),
                const MainCategory(),
                SizedBox(height: medium,),
                const  LabelSectionHotel(),
                 SizedBox( height: medium,),
                const HotelSection(),
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
            icon: Icon(Icons.favorite_border,color: Colors.grey,),
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
