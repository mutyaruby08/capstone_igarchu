// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../constants.dart';
import 'File Organizer/file_organizer_screen.dart';

class HealthTrackerScreen extends StatefulWidget {
  HealthTrackerScreen({Key? key}) : super(key: key);

  @override
  State<HealthTrackerScreen> createState() => _HealthTrackerScreenState();
}

class _HealthTrackerScreenState extends State<HealthTrackerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Health Tracker'),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          SizedBox(height: 15.0),
          Row(children: [
            SizedBox(width: 15.0),
            SizedBox.fromSize(
              size: Size(100.0, 100.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Material(
                  color: kBackground2,
                  child: InkWell(
                    splashColor: kPrimaryLightColor,
                    onTap: () {}, //diri ang wayyy
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(
                          Icons.notifications,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "Reminder",
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            SizedBox.fromSize(
              size: Size(200.0, 200.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Material(
                  color: kBackground2,
                  child: InkWell(
                    splashColor: kPrimaryLightColor,
                    onTap: () {}, //diri ang wayyy
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[                      
                          IconButton(
                            onPressed: (){
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => file_organizer_screen()),
                              );
                            }, 
                            icon: Icon(
                            Icons.folder,
                            size: 60,
                            color: Colors.white,
                          ), ),
                        
                        SizedBox(height: 20),
                        Text(
                          "File Organizer",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
