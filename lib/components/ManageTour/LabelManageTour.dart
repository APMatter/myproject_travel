import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class LabelManageTour extends StatelessWidget{
  const LabelManageTour({super.key});

  @override
  Widget build(BuildContext context){
    return Row( 
      
      children: [ 
        Container(
          child: Icon(Icons.arrow_back),),
          SizedBox(width: 5,),
        Container(child: Text('Manage Tourist Attractions',style: heading1,))
      ],
    );
  }
}