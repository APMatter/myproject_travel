import 'package:flutter/material.dart';
import 'package:myproject_travel/components/AddDetailPlace_hotel/AddPicSection.dart';
import 'package:myproject_travel/components/AddDetailPlace_hotel/TextFeild_name.dart';
import 'package:myproject_travel/components/AddDetailPlace_hotel/add_cover.dart';
import 'package:myproject_travel/components/AddDetailPlace_hotel/contactSection.dart';
import 'package:myproject_travel/components/AddDetailPlace_hotel/label_addhotel.dart';
import 'package:myproject_travel/utils/styles.dart';

class AddDetailHotel extends StatelessWidget{
  const AddDetailHotel ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold( 
      body: SafeArea(child: SingleChildScrollView( 
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Container(child: LabelAddHotel(),),
            Container(child: AddCoverPic(),),
            Container(child: TextFeildName(),),
            Container(child: AddPicSection(),),
            Container(child: ContactSection(),),
            SizedBox(height: 10,),
            Center(
              child: Container( child: ElevatedButton( 
                onPressed:  () {},
                style: ElevatedButton.styleFrom( 
                  elevation: 12.0,
                  textStyle: heading4,
                  
                ),
                child: Text('save',),
              ),),
            )
          ],
          
            
        ),
      )),
    );
  }
}