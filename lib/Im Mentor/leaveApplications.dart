import 'package:flutter/material.dart';
import 'package:yuvan/Im%20Mentor/approve.dart';
import 'package:yuvan/Im%20Mentor/mentorProfile.dart';


class leaveApplications extends StatefulWidget {
  const leaveApplications({Key? key}) : super(key: key);

  @override
  State<leaveApplications> createState() => _leaveApplicationsState();
}

class _leaveApplicationsState extends State<leaveApplications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 250,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xFF3366FF),
                        const Color(0xFF00CCFF),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),

                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),


                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) =>  mentorProfile()));
                                    },
                                    child: Icon(Icons.arrow_back,size: 30,color: Colors.white,))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only( left: 20,right: 15 ),
                            child: Text(
                              "Leave Applications",
                              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 25, right: 25),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: TextField(
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none),
                                        hintText: 'Search',
                                        hintStyle:
                                        TextStyle(color: Colors.grey, fontSize: 18),
                                        prefixIcon: Container(
                                          padding: EdgeInsets.all(15),
                                          child: Icon(Icons.search),
                                          width: 18,
                                        )),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Icon(Icons.sort),
                                    width: 25),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  approve()));

                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5,
                    child: Container(
                      width: 500,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,right: 70),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("Dhamu.B",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Text("Attendance: 82%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("Cgpa: 8.25",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                            ),

                          ],
                        ),



                      ),

                    ),




                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  approve()));

                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5,
                    child: Container(
                      width: 500,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,right: 70),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("Yuvan.M",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Text("Attendance: 82%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text("Cgpa: 8.25",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                            ),

                          ],
                        ),



                      ),

                    ),




                  ),
                ),
              ),








            ],
          ),
        ),
      ),
    );
  }
}
