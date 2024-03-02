import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class TextFeildTour extends StatelessWidget {
  const TextFeildTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10 ),
          child: Text(
            'Place Name',
            style: heading3,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
      
          width: 300,
          height: 50,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'Add Category',
            style: heading3,
          ),
        ),
        SizedBox(height: 5,),
        Container(
       
          width: 300,
          height: 50,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}
