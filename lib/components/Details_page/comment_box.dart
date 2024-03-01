import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: comment_box(),
        )
      ],
    );
  }
}

Widget comment_box() {
  return Container(
    width: 100,
    height: 50,
    decoration: BoxDecoration(
       
        color: Colors.grey.shade200),

  );
}
