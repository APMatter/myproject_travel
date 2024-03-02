import 'package:flutter/material.dart';
import 'package:myproject_travel/components/Details_page/head_details_section.dart';
import 'package:myproject_travel/pages/Admin_page/AddDetailPlace_tour_page.dart';
import 'package:myproject_travel/pages/Admin_page/AddPlace.dart';
import 'package:myproject_travel/pages/Admin_page/ManageHotel_page.dart';
import 'package:myproject_travel/pages/details_place.dart';
import 'package:myproject_travel/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ManageHotel (),

    );
  }
}
