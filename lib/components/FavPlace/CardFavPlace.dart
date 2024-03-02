import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class CardFavPlaces extends StatelessWidget {
  const CardFavPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Column( 
            children: [ 
              Card(),
              SizedBox(height: medium,),
              Card()
            ],
          ),
        )
      ],
    );
  }
}

Widget Card() {
  return Container(
    height: 170,
    width: 400,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: accent)),
    child: Row(
      children: [
        ClipRRect(
      
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 170,
            width: 170,
            child: Image(
              image: AssetImage('accest/images/wat.jpeg'),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              
              
            ),
            
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5,right: 15),
          child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            
            Text('Wat Rong Khun',style: heading3,),
            SizedBox(height: 5,),
            Text('Chiang Rai, \nNord-Thailand',style: p1,),
             SizedBox(height: 5,),
            Container(child: Point()),
            
          ],
        ),),
      
        Container(child: Icon(Icons.delete),)
      ],
    
    
    ),
  );
}

Widget Point() {
  return Row(children: [ 
    Icon(Icons.star,color: Colors.orange,),
    Text('4.5',style: heading4,)
  ],);

}