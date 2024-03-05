import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class LabelFavPlace extends StatelessWidget {
  const LabelFavPlace({super.key});

  @override
  Widget build(BuildContext context){
    return Row(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
      
       
        Text('Favorite Places',style: heading1,),
      ],
      
    );
    
  }


}