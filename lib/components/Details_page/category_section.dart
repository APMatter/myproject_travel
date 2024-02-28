import 'package:flutter/material.dart';
import 'package:myproject_travel/utils/styles.dart';

class CategoryPlace extends StatelessWidget { 
  const CategoryPlace ({super.key});

  @override

  Widget build(BuildContext context) {
    return Row( 
      children: [ 
       Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 67,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'landmark',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'culture',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
      ],
    );
  }
}