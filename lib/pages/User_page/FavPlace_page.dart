import 'package:flutter/material.dart';
import 'package:myproject_travel/components/FavPlace/CardFavPlace.dart';
import 'package:myproject_travel/components/FavPlace/LabelFavPlace.dart';

class FavoritePlace extends StatelessWidget{
  const FavoritePlace({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Container(child: LabelFavPlace(),),
              Container(child: CardFavPlaces(),)
            ],
          ),
        ),
      )),
    );
  }
}