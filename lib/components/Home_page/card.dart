import 'package:flutter/material.dart';
import 'package:myproject_travel/components/Home_page/cardInfo.dart';
import 'package:myproject_travel/utils/styles.dart';

class CardPoppular extends StatelessWidget {
  const CardPoppular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          //Make route go to the 2nd page
          CardInformation(),
          SizedBox(width: medium,),
          CardInformation(),
           SizedBox(width: medium,),
          CardInformation(), 
          SizedBox(width: medium,),
          CardInformation()
        ],
      ),
    );
  }
}
