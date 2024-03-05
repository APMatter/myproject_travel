import 'package:flutter/material.dart';
import 'package:myproject_travel/pages/User_page/Cat_Landmark.dart';
import 'package:myproject_travel/pages/User_page/Cat_cafe.dart';
import 'package:myproject_travel/pages/User_page/Cat_culture.dart';
import 'package:myproject_travel/pages/User_page/Cat_food.dart';
import 'package:myproject_travel/pages/User_page/Cat_nature.dart';
import 'package:myproject_travel/pages/User_page/Cat_shopping.dart';
import 'package:myproject_travel/pages/User_page/home_page.dart';
import 'package:myproject_travel/utils/styles.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(),
        SizedBox(
          height: 10,
        ),

        Row(
          children: [
            Category_Cafe(context),
            SizedBox(
              width: 10,
            ),
            Category_Culture(context),
            SizedBox(
              width: 10,
            ),
            Category_Landmark(context)
          ],
        ),SizedBox(height: 10,),
        Row(
          children: [
            Category_Shopping(context),
             SizedBox(
              width: 10,
            ),
            Category_Food(context),
             SizedBox(
              width: 10,
            ),
            Category_Nature(context)
          ],
        ) // corrected function call
      ],
    );
  }

  Widget Label() {
    return Row(
      children: [
        Text('Category', style: heading1),
      ],
    );
  }

  Widget Category_Landmark(BuildContext context) {
    // function name corrected
    return GestureDetector(
      onTap: () {
        // Navigate to the landmark page here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CategoryLandmark()),
        );
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: accent,
          ),
        ),
        child: Center(
          child: Text('Landmark',style: p4,),
        ),
      ),
    );
  }

  Widget Category_Culture(BuildContext context) {
    // function name corrected
    return GestureDetector(
      onTap: () {
        // Navigate to the landmark page here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CategoryCulture()),
        );
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: accent,
          ),
        ),
        child: Center(
          child: Text('Culture',style: p4),
        ),
      ),
    );
  }

  Widget Category_Cafe(BuildContext context) {
    // function name corrected
    return GestureDetector(
      onTap: () {
        // Navigate to the landmark page here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CategoryCafe()),
        );
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: accent,
          ),
        ),
        child: Center(
          child: Text('Cafe',style: p4),
        ),
      ),
    );
  }

  Widget Category_Nature(BuildContext context) {
    // function name corrected
    return GestureDetector(
      onTap: () {
        // Navigate to the landmark page here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CategoryNature()),
        );
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: accent,
          ),
        ),
        child: Center(
          child: Text('Nature',style: p4),
        ),
      ),
    );
  }

  Widget Category_Shopping(BuildContext context) {
    // function name corrected
    return GestureDetector(
      onTap: () {
        // Navigate to the landmark page here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CategoryShop()),
        );
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: accent,
          ),
        ),
        child: Center(
          child: Text('Shopping',style: p4),
        ),
      ),
    );
  }

  Widget Category_Food(BuildContext context) {
    // function name corrected
    return GestureDetector(
      onTap: () {
        // Navigate to the landmark page here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CategoryFood()),
        );
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: accent,
          ),
        ),
        child: Center(
          child: Text('Food&Drinks',style: p4),
        ),
      ),
    );
  }
}
