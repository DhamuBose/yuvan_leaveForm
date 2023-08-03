import 'package:flutter/material.dart';

import 'Welcome/welcome.dart';

void main() async {
  runApp(const leaveApplication());
}

class leaveApplication extends StatelessWidget {
  const leaveApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Leave Application',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Router());
  }
}

class Router extends StatefulWidget {
  const Router({Key? key}) : super(key: key);

  @override
  State<Router> createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                width: 500,
                height: 500,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100)),
                  color: Colors.cyan,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Image.asset("asset/images/mats.jpg",width: 300,height: 100,)
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text("Sairam Institutions",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w300,color: Colors.white),),
                    ),



                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 15),
                child: Text("Hello🖐🏻",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w300),),
              ),
              ElevatedButton(
                child: Text('Lets Go'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  welcomePage()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ));
  }
}
