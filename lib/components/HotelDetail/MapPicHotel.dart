import 'package:flutter/material.dart';

class MapPicHotel extends StatelessWidget {
  const MapPicHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Container(
            height: 300,
            width: 350, // Adjust this width as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage('accest/images/map.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
