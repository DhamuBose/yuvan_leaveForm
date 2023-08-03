import 'package:flutter/material.dart';
import 'package:yuvan/Welcome/welcome.dart';

import 'leaveForm.dart';

class studentProfile extends StatefulWidget {
  const studentProfile({Key? key}) : super(key: key);

  @override
  State<studentProfile> createState() => _studentProfileState();
}

class _studentProfileState extends State<studentProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Student Profile'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    const Color(0xFFC6FF00),
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
                    backgroundImage: AssetImage('asset/images/yuvan.jpg'),
                    radius: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100,top: 25),
                  child: Text("Name: Yuvan Raj.M",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text("ID  : Sit20it095",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Text("Reg No: 412420205119",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 75),
                  child: Text("Mentor : Mrs.Sharmila",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 110),
                  child: Text("Batch: 2020-2024",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Branch: Information Technology",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text("Current Semester: VI",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text("Cgpa: 8.25",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),


                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                        child: Image.asset("asset/images/attendance.jpg",width: 300,height: 100,)
                    ),










                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 60),
                  child: ElevatedButton(
                    child: const Text('Apply Leave'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  leaveform()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 60),
                  child: ElevatedButton(
                    child: const Text('Logout'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  welcomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.tealAccent,
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
