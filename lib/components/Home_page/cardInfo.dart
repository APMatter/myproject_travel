import 'package:flutter/material.dart';
import 'package:myproject_travel/pages/User_page/details_place.dart';
import 'package:myproject_travel/utils/styles.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DatailPlace()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Black,
          borderRadius: BorderRadius.circular(26),
          image: const DecorationImage(
            image: AssetImage('accest/images/wat.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        height: 250,
        width: 200,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            gradient: LinearGradient(
              colors: [Color.fromRGBO(0, 0, 0, 0.7), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: small, bottom: small),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: whiteTranper,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 68,
                        height: 36,
                        child: Center(
                          child: Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wat Rong Khun',
                      style: pBold,
                    ),
                    Text(
                      'Meang , Chaing Rai',
                      style: pLocation,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

