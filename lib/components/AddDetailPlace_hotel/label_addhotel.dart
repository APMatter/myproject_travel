import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class LabelAddHotel extends StatelessWidget{
  const LabelAddHotel({super.key});

  @override
  Widget build(BuildContext context){
    return Row( 
      children: [ 
        Container( 
          padding: EdgeInsets.all(20),
          child: Icon( Icons.arrow_back),
          
        ),
        Container( child: Text('Add Detail Hotel',style: heading1,),)
        
      ],
    );
  }
}