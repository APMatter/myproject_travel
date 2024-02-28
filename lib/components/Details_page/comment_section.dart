import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: [
              Text(
                'Comment',
                style: heading4,
              )
            ],
          ),

          
        ),
        
      ],
    );
  }
}
