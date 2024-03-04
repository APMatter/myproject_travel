import 'package:flutter/material.dart';

class GuideContactPage extends StatelessWidget {
  final String guideName;
  final String profileImageUrl;
  final String phoneNumber;
  final String email;
  final String facebook;

  GuideContactPage({
    required this.guideName,
    required this.profileImageUrl,
    required this.phoneNumber,
    required this.email,
    required this.facebook,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guide contact',
          style: TextStyle(color: Colors.white), // Setting text color
        ),
        backgroundColor: Color.fromARGB(255, 94, 93, 91), // Setting AppBar background color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 50, 8.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(profileImageUrl),
            ),
            SizedBox(height: 20),
            Text(
              guideName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ContactGuide(
              phoneNumber: phoneNumber,
              email: email,
              facebook: facebook,
            ),
          ],
        ),
      ),
    );
  }
}

class ContactGuide extends StatelessWidget {
  final String phoneNumber;
  final String email;
  final String facebook;

  ContactGuide({
    required this.phoneNumber,
    required this.email,
    required this.facebook,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 15),
        buildContactItem(Icons.email, email),
        SizedBox(height: 15),
        buildContactItem(Icons.phone, phoneNumber),
        SizedBox(height: 15),
        buildContactItem(Icons.facebook, facebook),
      ],
    );
  }

  Widget buildContactItem(IconData icon, String text) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 94, 93, 91), // Background color of the bar
        borderRadius: BorderRadius.circular(0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Colors.white), // Color icon
          SizedBox(width: 70),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16), // Color text
          ),
        ],
      ),
    );
  }
}
