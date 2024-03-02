import 'package:flutter/material.dart';
import 'package:myproject_travel/components/AddDetailPlace_hotel/AddPicSection.dart';
import 'package:myproject_travel/components/AddDetailPlace_hotel/contactSection.dart';
import 'package:myproject_travel/components/Addplace/add_ButtonPlace.dart';
import 'package:myproject_travel/components/Addplace/label_AddPlace.dart';
import 'package:myproject_travel/utils/styles.dart';

class AddPlaceMain extends StatelessWidget {
  const AddPlaceMain({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold( 
      body: SafeArea(child: SingleChildScrollView( 
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Container( 
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration( 
                color: Colors.white
              ),
              child: (
                Container( 
                  child: LabelAddPlace(),
                )
              ),
            ),
            Container( 
             padding: EdgeInsets.only(left: 20),
              child:AddButton() ,
            ),
            
          ],
        ),
      )),
    );
    
  }


}