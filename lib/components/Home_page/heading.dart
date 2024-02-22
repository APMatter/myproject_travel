import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: text,
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: AssetImage('accest/images/profile.jpg'),
                ),
              ),
              height: 50,
              width: 50,
              
            ),
            SizedBox(
              width: small,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: p1,
                ),
                Text(
                  'Matthew',
                  style: heading3,
                ),
              ],
            ),
          ],
        ),
        Icon(
          Icons.notifications,
          color: icon,
          size: 28,
        ),
      ],
    );
  }
}
