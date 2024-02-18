import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class LabelSection extends StatelessWidget {
  final String text;
  final TextStyle style;

  const LabelSection({required this.text, required this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Popular', style: heading1),
        Icon(
          Icons.more_horiz,
          color: icon,
          size: 28,
        )
      ],
    );
  }
}
