import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class GalleryPicHotel extends StatelessWidget {
  const GalleryPicHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage('accest/images/hotel.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: small,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage('accest/images/hotel.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: small,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage('accest/images/hotel.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}