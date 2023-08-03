import 'package:flutter/material.dart';

import '../Im Mentor/mentorLogin.dart';
import '../Im Student/studentLogin.dart';


class welcomePage extends StatefulWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
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
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text("Apply Leave ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
              ),
              Text("with ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),

              Text("Your Mentor's Approval",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset("asset/images/mats.jpg",width: 400,height: 100,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/images/sairam.png'),
                  radius: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ElevatedButton(
                  child: Text('Im Mentor'),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  mentorLogin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  child: Text('Im Student'),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  studentLogin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),

            ],
          ),
        ),
      ],
      ),
    );
  }
}