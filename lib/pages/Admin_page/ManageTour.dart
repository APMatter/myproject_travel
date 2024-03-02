import 'package:flutter/material.dart';
import 'package:myproject_travel/components/ManageTour/AddTour.dart';
import 'package:myproject_travel/components/ManageTour/CardManageTour.dart';
import 'package:myproject_travel/components/ManageTour/LabelManageTour.dart';

class ManageTour extends StatelessWidget{
  const ManageTour ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold( 
      body: SafeArea(child: SingleChildScrollView( 
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Container( 
              padding:EdgeInsets.all(20),
              child: LabelManageTour(),),
              Container(
                padding: EdgeInsets.all(20),
                child: CardManageTour(),),
                Container(child: AddTour(),)

              
                
                
              
          
            
          ],
          
            
        ),
      )),
    );
  }
}