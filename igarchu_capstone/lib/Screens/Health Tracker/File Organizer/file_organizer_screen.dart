import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Screens/Health%20Tracker/File%20Organizer/add_file.dart';
import '../../../constants.dart';
import '../ht_screen.dart';

class file_organizer_screen extends StatefulWidget {
  const file_organizer_screen({Key? key}) : super(key: key);

  @override
  State<file_organizer_screen> createState() => _file_organizer_screenState();
}

class _file_organizer_screenState extends State<file_organizer_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: const Text('File Organizer'),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        leading: IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.arrow_back,
                color: kbutton2,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HealthTrackerScreen()),
                );
              },
            ),
      ),

      body: Column(
        children: [
          SizedBox(height: 15.0),
          Row(children: [
            SizedBox(width: 15.0),
            SizedBox.fromSize(
              size: Size(150.0, 150.0),
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
                          icon: Icon(
                          Icons.image,
                          size: 60,
                           color: Colors.red,
                         ),
                      onPressed: () {
                       Navigator.of(context).pushReplacement(
                       MaterialPageRoute(builder: (_) => add_file()),
                      );
                      },
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Images",
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
              size: Size(150.0, 150.0),
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
                              MaterialPageRoute(builder: (context) => add_file()),
                              );
                            }, 
                            icon: Icon(
                            Icons.folder,
                            size: 60,
                            color: Colors.black,
                          ), ),
                        
                        SizedBox(height: 20),
                        Text(
                          "Documents",
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