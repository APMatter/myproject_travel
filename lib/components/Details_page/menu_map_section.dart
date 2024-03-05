import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myproject_travel/pages/AboutGuide/guide_contact.dart';
import 'package:myproject_travel/pages/AboutGuide/guide_list.dart';
import 'package:myproject_travel/utils/styles.dart';

class MenuMap extends StatelessWidget {
  const MenuMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Row(
            children: [
              Container(
                height: 25,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: accent)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'open google map',
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector( 
                onTap: () {
                        // Navigate to another page when the card is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GuideListPage()),
                        );
                      },
                      child: Container(
                height: 25,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: accent)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'contact with guide',
                  ),
                ),
              ),
              )
              
            ],
          ),
        ),
      ],
    );
  }
}
