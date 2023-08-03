import 'package:flutter/material.dart';
import 'package:yuvan/Im%20Student/studentProfile.dart';


class leaveform extends StatefulWidget {
  const leaveform({Key? key}) : super(key: key);

  @override
  State<leaveform> createState() => _leaveformState();
}

class _leaveformState extends State<leaveform> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar:AppBar(
            title: Text('Leave Form'),
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





          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter here',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Student ID",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Sit ID',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Today's Date",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter here',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Attendance Percentange",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Here %',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "No of Days",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Here',
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Date",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'From',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'To',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Reason",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Here',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Parents Mobile No",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Here',
                        ),
                      ),
                    ),








                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: const Text('Apply'),
                        onPressed: () {
                          showAlertDialog(context);




                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent,
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>  studentProfile()));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    icon: Icon(Icons.timer_outlined,size:50),
    content: Text("Wait for Approval From Mentor"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}