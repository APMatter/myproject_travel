import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class AddPicSection extends StatelessWidget {
  const AddPicSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 45),
          child: Text(
            'Add Gallery',
            style: heading3,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50), // Adjust left padding as needed
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.blueAccent,
              ),
            ),
            child: Center(
              child: Icon(Icons.add),
            ),
            
          ),
        ),
        
      ],
    );
  }
}
