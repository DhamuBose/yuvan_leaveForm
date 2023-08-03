import 'package:flutter/material.dart';
import 'package:yuvan/Im%20Mentor/leaveApplications.dart';
import 'package:yuvan/Welcome/welcome.dart';
import 'package:yuvan/main.dart';


class approve extends StatefulWidget {
  const approve({Key? key}) : super(key: key);

  @override
  State<approve> createState() => _approveState();
}

class _approveState extends State<approve> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Details'),
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

               Align(
                 alignment: Alignment.topLeft,
                   child: Text("Name:",style: TextStyle(fontSize: 30),)),
                Align(
                  alignment: Alignment.topLeft,
                    child: Text("SIT ID:",style: TextStyle(fontSize: 30),)),
                Align(
                  alignment: Alignment.topLeft,
                    child: Text("Att:",style: TextStyle(fontSize: 30),)),
                Align(
                  alignment: Alignment.topLeft,
                    child: Text("No of Days",style: TextStyle(fontSize: 30),)),
                Align(
                  alignment: Alignment.topLeft,
                    child: Text("Date:",style: TextStyle(fontSize: 30),)),
                Align(
                  alignment: Alignment.topLeft,
                    child: Text("Reason:",style: TextStyle(fontSize: 30),)),
                Align(
                  alignment: Alignment.topLeft,
                    child: Text("Parents Mobile No:",style: TextStyle(fontSize: 30),)),











                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 400,bottom: 10,left: 80),
                      child: Row(
                        children: [
                          ElevatedButton(
                            child: const Text('Approve'),
                            onPressed: () {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) =>  leaveform()));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ),
                          ElevatedButton(
                            child: const Text('Reject'),
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
                        ],
                      ),
                    ),



                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
