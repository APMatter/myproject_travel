import 'package:flutter/material.dart';
import 'package:myproject_travel/components/Details_page/head_details_section.dart';
import 'package:myproject_travel/pages/Admin_page/AddDetailPlace_tour.dart';
import 'package:myproject_travel/pages/Admin_page/AddDetailPlace_hotel_page.dart';
import 'package:myproject_travel/pages/Admin_page/AddPlace.dart';
import 'package:myproject_travel/pages/Admin_page/ManageHotel_page.dart';
import 'package:myproject_travel/pages/Admin_page/ManageTour.dart';
import 'package:myproject_travel/pages/User_page/Cat_shopping.dart';
import 'package:myproject_travel/pages/User_page/FavPlace_page.dart';
import 'package:myproject_travel/pages/User_page/HotelDetails.dart';
import 'package:myproject_travel/pages/User_page/details_place.dart';
import 'package:myproject_travel/pages/User_page/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CategoryShop (),

    );
  }
}
