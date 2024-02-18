import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';
import 'package:myproject_travel/components/Home_page/hotel_card.dart';




class HotelSection extends StatelessWidget{ 
  const HotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 250,
      child: ListView(
        
        scrollDirection: Axis.horizontal,
        children: [
          //Make route go to the 2nd page
          HotelCard(),
          SizedBox(width: medium,),
          HotelCard(),
           SizedBox(width: medium,),
          HotelCard(), 
          SizedBox(width: medium,),
          HotelCard()
        ],
      ),
    );

   

  }
}