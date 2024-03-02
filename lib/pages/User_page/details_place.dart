import 'package:flutter/material.dart';
import 'package:myproject_travel/components/Details_page/category_section.dart';
import 'package:myproject_travel/components/Details_page/comment_box.dart';
import 'package:myproject_travel/components/Details_page/comment_section.dart';
import 'package:myproject_travel/components/Details_page/gallery_pic_section.dart';
import 'package:myproject_travel/components/Details_page/gallery_section.dart';
import 'package:myproject_travel/components/Details_page/head_details_section.dart';
import 'package:myproject_travel/components/Details_page/label_map_section.dart';
import 'package:myproject_travel/components/Details_page/map_pic_section.dart';
import 'package:myproject_travel/components/Details_page/menu_map_section.dart';
import 'package:myproject_travel/pages/User_page/home_page.dart';
import 'package:myproject_travel/utils/styles.dart';

class DatailPlace extends StatelessWidget {
  const DatailPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: MediaQuery.of(context).size.width,
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
                            image: AssetImage('accest/images/wat.jpeg'),
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
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 22,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
        Container(
          child: HeadDetailSection(),
        ),
        Container(
          child: CategoryPlace(),
        ),
        Container(
          child: GalleryPlace(),
        ),
        Container(
          child: GalleryPic(),
        ),
        Container(
          child: LabelMap(),
        ),
        Container(
          child: MapPic(),
        ),
        Container(
          child: MenuMap(),
        ),
        Container(
          child: CommentSection(),
        ),
        Container(
          child: CommentBox(),
        )
      ]),
    )));
  }
}
