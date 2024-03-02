import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class AddDress  extends StatelessWidget{
  const AddDress ({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        Container(
          padding: EdgeInsets.only(top: 10,left: 45),
          child: Text(
            'AddDress',
            style: heading3,
          ),
        ),
        SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.only(left: 45),
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