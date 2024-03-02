import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class LabelAddPlace extends StatelessWidget {
  const LabelAddPlace({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        Text('Add Place',style: heading1,),
        Text('Admin only',style: p1,),
        
      ],
      
    );
    
  }


}