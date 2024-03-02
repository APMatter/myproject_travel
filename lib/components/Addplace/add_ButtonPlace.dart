import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
     
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Color.fromARGB(95, 30, 153, 149),
              ),
              borderRadius: BorderRadiusDirectional.circular(5)),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                  Container( 
                    padding: EdgeInsets.only(bottom: 5,top: 10),
                    child: Image(image:  AssetImage('accest/images/landmark.png'),width: 100,height: 100,),
                    
                  ),
                  Container(child: Text('Tourist Attraction',style: p2,),)
                ],

              ),
        ),
        SizedBox(
          width: medium,
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Color.fromARGB(95, 30, 153, 149),
              ),
              borderRadius: BorderRadiusDirectional.circular(5)),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                  Container( 
                    padding: EdgeInsets.only(bottom: 5,top: 10),
                    child: Image(image:  AssetImage('accest/images/hotel.png'),width: 100,height: 100,),
                    
                  ),
                  Container(child: Text('Hotel',style: p2,),)
                ],

              ),
        ),
      ],
    );
  }
}
