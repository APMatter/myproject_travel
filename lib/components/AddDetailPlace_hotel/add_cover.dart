import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class AddCoverPic extends StatelessWidget{
  const AddCoverPic ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blueAccent), // Assuming accent is defined somewhere
        ),
        child: Center(
          child: Label(),
        ),
      ),
    );
  }
}

Widget Label() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        child: Icon(Icons.add),
      ),
      SizedBox(height: 8), // Adjust as needed
      Container(
        child: Text('Add Cover Images'),
      )
    ],
  );
}

