import 'package:flutter/material.dart';
import 'package:myproject_travel/components/ManagePlaceHotel/LabelManageHotel.dart';
import 'package:myproject_travel/components/ManagePlaceHotel/cardManageHotel.dart';

class ManageHotel extends StatelessWidget{
  const ManageHotel ({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold( 
      body: SafeArea(child: SingleChildScrollView( 
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Container( 
              padding:EdgeInsets.all(20),
              child: LabelManageHotel(),),
              Container(
                padding: EdgeInsets.all(20),
                child: CardManageHotel(),)
              
                
                
              
          
            
          ],
          
            
        ),
      )),
    );
  }
}