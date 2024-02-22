import 'package:flutter/material.dart';

class HeadDetailSection extends StatelessWidget {
  const HeadDetailSection({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text('Weather Report'),
              background: Image.asset(
                'assets/images/unsplash.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          
        ],
      ),
    );;

  }
}