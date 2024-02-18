import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class LabelSectionHotel extends StatelessWidget {
  

  const LabelSectionHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Hotel', style: heading1),
        Icon(
          Icons.more_horiz,
          color: icon,
          size: 28,
        )
      ],
    );
  }
}