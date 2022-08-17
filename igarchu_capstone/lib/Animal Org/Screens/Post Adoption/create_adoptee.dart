// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Post%20Adoption/post_adoption.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constants.dart';

class NewAdopteeForm extends StatefulWidget {
  const NewAdopteeForm({Key? key}) : super(key: key);

  @override
  State<NewAdopteeForm> createState() => _NewAdopteeFormState();
}

class _NewAdopteeFormState extends State<NewAdopteeForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Card(
                margin: EdgeInsets.zero,
                color: Colors.black,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        ImagePicker _picker = ImagePicker();
                        final XFile? _image = await _picker.pickImage(
                            source: ImageSource.gallery);

                        if (_image == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('No image was selected')));
                        }

                        if (_image != null) {
                          
                        }
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Add image',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildText('Pet Information', 20, FontWeight.bold),
            _buildTextFormField('Pet Name'),
            const SizedBox(height: 10),
            // _buildText('Pet Gender', 16, FontWeight.bold),
            _buildTextFormField('Gender'),
            const SizedBox(height: 10),
            _buildTextFormField('Pet Age'),
            const SizedBox(height: 10),
            _buildTextFormField('Pet Gender'),
            const SizedBox(height: 10),
            _buildTextFormField('Personality'),
            const SizedBox(height: 10),
            _buildTextFormField('Description'),
            const SizedBox(height: 30),
            Center(
              child: Row(
                children: [
                  SizedBox(width: 120),
                  ElevatedButton(
                      onPressed: () {
                        print('Save');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                      ),
                      child: const Text('Save',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold))),
                  SizedBox(width: 120),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostAdoptScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                      ),
                      child: const Text('Cancel',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _buildText(String text, double fontSize, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  TextFormField _buildTextFormField(String hinText) {
    return TextFormField(
        decoration: InputDecoration(
      hintText: hinText,
    ));
  }
}
