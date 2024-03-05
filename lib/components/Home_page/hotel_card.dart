import 'package:flutter/material.dart';
import 'package:myproject_travel/pages/User_page/HotelDetails.dart';
import 'package:myproject_travel/utils/styles.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () {
        // Navigate to the landmark page here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HotelDetail()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Black,
          borderRadius: BorderRadius.circular(26),
          image: const DecorationImage(
            image: AssetImage('accest/images/hotel.jpg'),
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
                            borderRadius: BorderRadius.circular(12)),
                        width: 68,
                        height: 36,
                        child: Center(
                            child: Icon(
                          Icons.star,
                          color: Colors.orange,
                        )),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wanason Resort',
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
