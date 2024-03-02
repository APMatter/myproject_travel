import 'package:flutter/widgets.dart';
import 'package:myproject_travel/utils/styles.dart';

class InformationDection extends StatelessWidget{
  const InformationDection ({super.key});

  @override
  Widget build(BuildContext context){
    return Column( 
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        Text('Wanason Resort',style: heading1,),
        SizedBox(height: small,),
      Text('Information',style: heading3,),
      SizedBox(height: small,),
      Text('Price',style: heading4,),
      SizedBox(height: 5,),
      Text('2000 Baht/day',style: p1,),
      SizedBox(height: small,),
      Text('Contact',style: heading4),
      Text('E-mail : 12345abcd@gmail.com',style: p1),
      Text('www.1234abc.ac.th',style: p1)
    ],);

  }
}