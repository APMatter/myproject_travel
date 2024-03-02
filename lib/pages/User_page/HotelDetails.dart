import 'package:flutter/material.dart';
import 'package:myproject_travel/components/HotelDetail/GalleryPicHotel.dart';
import 'package:myproject_travel/components/HotelDetail/GallerySetion.dart';
import 'package:myproject_travel/components/HotelDetail/Information_Sectn.dart';
import 'package:myproject_travel/components/HotelDetail/LabelMapHotel.dart';
import 'package:myproject_travel/components/HotelDetail/MapPicHotel.dart';
import 'package:myproject_travel/pages/User_page/home_page.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width, // Ensure full width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 224, 224, 224),
                      image: DecorationImage(
                        image: AssetImage('accest/images/hotel.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                size: 22,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container( 
              padding: EdgeInsets.all(20),
              child: InformationDection(),),
              Container(child: LabelGalleryHotel(),),
              Container(child: GalleryPicHotel(),),
              Container(child: LabelMapHotel(),),
              Container(child: MapPicHotel(),)
              
          ],
        )),
      ),
    );
  }
}
