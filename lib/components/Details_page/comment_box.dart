import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget{
  const CommentBox ({super.key});

  @override
  Widget build(BuildContext context){
    return Row(children: [ 
      Container( 
        padding: EdgeInsets.only(left: 20, top: 10, right: 20),

      )
    ],);
  }
}

Widget comment_box(){
  return Container( 
    
    width: 80,
    height: 50,

    decoration: BoxDecoration( 
      borderRadius: BorderRadiusDirectional.circular(5),
      color: Colors.blue
    ),
   
  );
}