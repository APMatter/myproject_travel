import 'package:flutter/material.dart';
import 'guide_details.dart';

class GuideListPage extends StatelessWidget {

const GuideListPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guide List',
          style: TextStyle(color: Colors.white), 
        ),
        backgroundColor: Color.fromARGB(255, 94, 93, 91), 
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GuideList(),
    );
  }
}

class GuideList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Number of guides to display
      itemBuilder: (context, index) {
        final firstName = "Firstname";
        final lastName = "Lastname";

        return Container(
          padding: EdgeInsets.all(10), // Adding padding for text
          margin: EdgeInsets.symmetric(vertical: 1, horizontal: 3), // Spacing between guide items
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 98, 100, 100), // Setting background color of the box
            borderRadius: BorderRadius.circular(0), // Setting rounded corners
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey, // Setting background color of CircleAvatar to grey
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              //child: Text('${index + 1}'), // Displaying guide number in a circle
            ),
            title: Text(
              '$firstName $lastName',
              style: TextStyle(
                color: Colors.white, // Setting text color to white
              ),
            ), // Displaying guide's name and surname
            onTap: () {
              // When guide item is tapped
              // Navigate to GuideDetailsPage with guide data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GuideDetailsPage(
                    guideName: '$firstName $lastName',
                    profileImageUrl: 'https://via.placeholder.com/150',
                    hasVehicle: true, // Setting as needed
                    images: ['https://via.placeholder.com/150', 'https://via.placeholder.com/150'], // Supplemental images
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
