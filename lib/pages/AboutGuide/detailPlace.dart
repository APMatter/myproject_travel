import 'package:flutter/material.dart';
import 'guide_list.dart'; // Import หน้า GuideListPage

class PlaceDetailsPage extends StatefulWidget {
  @override
  _PlaceDetailsPageState createState() => _PlaceDetailsPageState();
}

class _PlaceDetailsPageState extends State<PlaceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ตำแหน่งรายละเอียดของสถานที่ในนี้
            Text(
              'รายละเอียดสถานที่',
              style: TextStyle(fontSize: 24.0),
            ),
            // ปุ่ม Guide
            ElevatedButton(
              onPressed: () {
                // เมื่อกดปุ่ม Guide
                // นำไปยังหน้า GuideListPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GuideListPage()),
                );
              },
              child: Text('Guide'),
            ),
          ],
        ),
      ),
    );
  }
}
