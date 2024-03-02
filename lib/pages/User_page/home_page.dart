import 'package:flutter/material.dart';
import 'package:myproject_travel/components/Home_page/heading.dart';
import 'package:myproject_travel/components/Home_page/search.dart';
import 'package:myproject_travel/components/Home_page/label_section_pop.dart';
import 'package:myproject_travel/components/Home_page/card.dart';
import 'package:myproject_travel/components/Home_page/mainCategory.dart';
import 'package:myproject_travel/components/Home_page/hotel_section.dart';
import 'package:myproject_travel/components/Home_page/label_section_hotel.dart';

import 'package:myproject_travel/utils/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
    );
  }
}
