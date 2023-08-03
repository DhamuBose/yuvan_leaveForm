import 'package:flutter/material.dart';
import 'package:yuvan/Im%20Student/studentProfile.dart';
import 'package:yuvan/Welcome/welcome.dart';

class studentLogin extends StatefulWidget {
  const studentLogin({Key? key}) : super(key: key);

  @override
  State<studentLogin> createState() => _studentLoginState();
}

class _studentLoginState extends State<studentLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
      Image.asset(
      "asset/images/college.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(left: 10,top: 150,right: 10),
            child: SingleChildScrollView(
              child: SizedBox(
                width: 400,
                height: 450,
                child: Card(
                  color: Colors.white70,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  ),

                  child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  welcomePage()));
                              },
                              style: TextButton.styleFrom(
                              ),
                              child: Text(
                                'Go Back',
                                style: TextStyle(fontSize: 15,color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        // Text("Retailer"),
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Text("Student Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
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
                              labelText: 'Enter here',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0,top: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Date Of Birth(dd/mm/yyyy)",
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
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter Here',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          child: Text('Login'),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>  studentProfile()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent,
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),

                      ]),
                ),
              ),
            ),
          ),

        ),
      ],
      ),
    );
  }
}

