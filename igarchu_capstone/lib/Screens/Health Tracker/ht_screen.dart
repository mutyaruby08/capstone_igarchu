// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:igarchu_capstone/classes/petLover.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../services/firebase_storage_services.dart';

class HealthTrackerScreen extends StatefulWidget {
  HealthTrackerScreen({Key? key}) : super(key: key);

  @override
  State<HealthTrackerScreen> createState() => _HealthTrackerScreenState();
}

class _HealthTrackerScreenState extends State<HealthTrackerScreen> {
  String _imageName = '';
  File? _image;

  void uploadImage(FilePickerResult? result, String uid) async {
    if (result != null) {
      setState(() {
        _imageName = result.files.single.name;
        _image = File(result.files.single.path!);
      });

      final firebaseStorage = FirebaseStorageService();
      // Get download URL of uploaded image
      final imageURL = await firebaseStorage.upload(_image!, _imageName);
    }
  }

  chooseImage() async {
    final result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'docx']);

    if (result == null) {
      return null;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // final petLover = Provider.of<PetLover>(context);
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
              size: Size(100.0, 100.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Material(
                  color: kBackground2,
                  child: InkWell(
                    splashColor: kPrimaryLightColor,
                    // Pick Image and Upload
                    onTap: () async {
                      final result = await chooseImage();
                      // uploadImage(result, petLover.uid!);
                    }, //diri ang wayyy
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(
                          Icons.folder,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "File Organizer",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
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
