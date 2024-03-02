import 'package:flutter/material.dart';
import 'package:myproject_travel/components/AddDetailPlace_tour/AddCoverTour.dart';
import 'package:myproject_travel/components/AddDetailPlace_tour/AddDress.dart';
import 'package:myproject_travel/components/AddDetailPlace_tour/AddGalleryPlace.dart';
import 'package:myproject_travel/components/AddDetailPlace_tour/LabelTour.dart';
import 'package:myproject_travel/components/AddDetailPlace_tour/TextFeildTour.dart';
import 'package:myproject_travel/utils/styles.dart';

class AddPlaceDetailTour extends StatelessWidget {
  const AddPlaceDetailTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: LabelTour(),
              ),
              Container(
                child: AddCoverTour(),
              ),
              Container(
                padding: EdgeInsets.only(left: 45),
                child: TextFeildTour(),
              ),
              Container(
                padding: EdgeInsets.only(left: 45),
                child: AddGalleryPlace(),
              ),
              Container(
                child: AddDress(),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      textStyle: heading4,
                    ),
                    child: Text('save'),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
