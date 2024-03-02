import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class LabelManageHotel extends StatelessWidget{
  const LabelManageHotel({super.key});

  @override
  Widget build(BuildContext context){
    return Row( 
      
      children: [ 
        Container(
          child: Icon(Icons.arrow_back),),
          SizedBox(width: 5,),
        Container(child: Text('Manage Tourist Attraction',style: heading1,))
      ],
    );
  }
}