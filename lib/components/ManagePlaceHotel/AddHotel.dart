import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class AddHotel extends StatelessWidget{
  const AddHotel ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: accent,
          borderRadius: BorderRadius.circular(5),
           // Assuming accent is defined somewhere
        ),
        child: Center(
          child: Label(),
        ),
      ),
    );
  }
}

Widget Label() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        child: Icon(Icons.add,color: Colors.white),
      ),
  
    ],
  );
}