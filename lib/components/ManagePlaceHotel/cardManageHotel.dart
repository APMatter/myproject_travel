import 'package:flutter/material.dart';
class CardManageHotel extends StatelessWidget {
  const CardManageHotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 170,
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8), // Adjust as needed
            child: Image(
              image: AssetImage('accest/images/hotel.jpg'),
              fit: BoxFit.cover,
            ),
          )
        ),
        Container(
          width: 170,
          height: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8), // Adjust as needed
            child: Image(
              image: AssetImage('accest/images/hotel.jpg'),
              fit: BoxFit.cover,
            ),
          )
        ),
      ],
    );
  }
}

