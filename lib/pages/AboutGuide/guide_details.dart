import 'package:flutter/material.dart';
import 'guide_contact.dart'; // Import GuideContactPage

class GuideDetailsPage extends StatelessWidget {
  final String guideName;
  final String profileImageUrl;
  final bool hasVehicle;
  final List<String> images;

  GuideDetailsPage({
    required this.guideName,
    required this.profileImageUrl,
    required this.hasVehicle,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guide Details',
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
      body: Padding(
        padding: const EdgeInsets.all(30.0), // Adjust the spacing as needed
        child: Center(
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
              // Supplementary images
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images
                    .map((imageUrl) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color.fromARGB(255, 61, 61, 61), width: 0),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                imageUrl,
                                width: 150,
                                height: 150,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(height: 30),
              // Various icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 93, 91),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.calendar_month),
                      onPressed: () {
                        // Display calendar popup
                        _showCalendar(context);
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                      iconSize: 55,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 93, 91),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      icon: Icon(hasVehicle ? Icons.directions_car : Icons.car_crash_sharp),
                      onPressed: () {
                        // When vehicle icon is pressed
                        // Show a popup to display vehicle information
                        _showVehicleDialog(context);
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                      iconSize: 55,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 93, 91),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.phone),
                      onPressed: () {
                        // When phone icon is pressed
                        // Navigate to Guide Contact page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GuideContactPage(
                              guideName: guideName,
                              profileImageUrl: profileImageUrl,
                              phoneNumber: '123-456-7890', // Guide's phone number
                              email: 'guide@example.com', // Guide's email
                              facebook: 'facebook.com/guide', // Guide's facebook
                            ),
                          ),
                        );
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                      iconSize: 55,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Display calendar popup
void _showCalendar(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime(2100),
            onDateChanged: (DateTime selectedDate) {
              // Do whatever you want when a date is selected
              Navigator.pop(context);
            },
          ),
        ),
      );
    },
  );
}

// Show a dialog to indicate the vehicle types the guide has
void _showVehicleDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Vehicle Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildVehicleIcon(Icons.directions_car, 'Car', context),
                  _buildVehicleIcon(Icons.directions_bike, 'Bike', context),
                  _buildVehicleIcon(Icons.directions_bus, 'Van', context),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

// Build a vehicle icon button
Widget _buildVehicleIcon(IconData iconData, String vehicleType, BuildContext context) {
  return Column(
    children: [
      IconButton(
        icon: Icon(iconData),
        onPressed: () {
          Navigator.of(context).pop();
        },
        iconSize: 50,
      ),
      SizedBox(height: 5),
      Text(vehicleType),
    ],
  );
}