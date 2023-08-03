import 'package:flutter/material.dart';
import 'package:yuvan/Welcome/welcome.dart';

import 'leaveApplications.dart';

class mentorProfile extends StatefulWidget {
  const mentorProfile({Key? key}) : super(key: key);

  @override
  State<mentorProfile> createState() => _mentorProfileState();
}

List<String> _locations = ['Mentees', 'Dhamu', 'Rajesh', 'Bhragadhesh', 'Mathesh']; // Option 1
String _selectedLocation = 'Mentees'; // Option 1

class _mentorProfileState extends State<mentorProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Mentor Profile'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    const Color(0xFF3366FF),
                    const Color(0xFF00CCFF),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/images/profile.png'),
                    radius: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150, top: 25),
                  child: Text(
                    "Name: Gokul",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text(
                    "ID  : Sitxxxxxxx",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text(
                    "Email: abc@gmail.com",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text(
                    "Phn No: 0000000000",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 30),
                  child: DropdownButton(
                    hint: Text('Mentees',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),), // Not necessary for Option 1
                    value: _selectedLocation,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue!;
                      });
                    },
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),






                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 60),
                  child: ElevatedButton(
                    child: const Text('Applications'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  leaveApplications()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 60),
                  child: ElevatedButton(
                    child: const Text('Logout'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => welcomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
