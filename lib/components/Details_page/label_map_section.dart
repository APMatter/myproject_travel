import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class LabelMap extends StatelessWidget {
  const LabelMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'See the map',
                style: heading4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
