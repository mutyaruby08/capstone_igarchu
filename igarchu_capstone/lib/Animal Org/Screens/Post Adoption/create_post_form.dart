// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Models/pet_adoptee.dart';

class AdopteeFormWidget extends StatelessWidget {
  final int? adopteeID;
  final String name;
  final String color;
  final int? age;
  final String type;
  final String size;
  final String breed;
  final String gender;
  final String description;
  final String persona1;
  final ValueChanged<String> onChangedAdopteeID;
  final ValueChanged<String> onChangedName;
  final ValueChanged<String> onChangedColor;
  final ValueChanged<String> onChangedAge;
  final ValueChanged<String> onChangedType;
  final ValueChanged<String> onChangedSize;
  final ValueChanged<String> onChangedBreed;
  final ValueChanged<String> onChangedGender;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onChangedPersona1;
  final VoidCallback onSavedAdoptee;

  const AdopteeFormWidget({
    Key? key,
    this.adopteeID,
    this.name = '',
    this.color = '',
    this.age,
    this.type = '',
    this.size = '',
    this.breed = '',
    this.gender = '',
    this.description = '',
    this.persona1 = '',
    required this.onChangedAdopteeID,
    required this.onChangedName,
    required this.onChangedColor,
    required this.onChangedAge,
    required this.onChangedType,
    required this.onChangedSize,
    required this.onChangedBreed,
    required this.onChangedGender,
    required this.onChangedDescription,
    required this.onChangedPersona1,
    required this.onSavedAdoptee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildAdopteeID(),
              SizedBox(height: 5),
              buildName(),
              SizedBox(height: 5),
              buildColor(),
              SizedBox(height: 5),
              buildAge(),
              SizedBox(height: 5),
              buildType(),
              SizedBox(height: 5),
              buildSize(),
              SizedBox(height: 5),
              buildBreed(),
              SizedBox(height: 5),
              buildGender(),
              SizedBox(height: 5),
              buildPersona1(),
              SizedBox(height: 5),
              buildDescription(),
              SizedBox(height: 5),
              buildButton(),
            ],
          ),
        ),
      );

  Widget buildAdopteeID() => TextFormField(
        maxLines: 1,
        initialValue: adopteeID.toString(),
        onChanged: onChangedAdopteeID,
        validator: (adopteeID) {
          if (adopteeID!.isEmpty) {
            return 'The adoptee id cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Adoptee ID',
        ),
      );

  Widget buildName() => TextFormField(
        maxLines: 1,
        initialValue: name.toString(),
        onChanged: onChangedName,
        validator: (name) {
          if (name!.isEmpty) {
            return 'The name cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Name',
        ),
      );

  Widget buildColor() => TextFormField(
        maxLines: 1,
        initialValue: color.toString(),
        onChanged: onChangedColor,
        validator: (color) {
          if (color!.isEmpty) {
            return 'The color cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Color',
        ),
      );

  Widget buildAge() => TextFormField(
        maxLines: 1,
        initialValue: age.toString(),
        onChanged: onChangedAge,
        validator: (age) {
          if (age!.isEmpty) {
            return 'The age cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'age',
        ),
      );

  Widget buildType() => TextFormField(
        maxLines: 1,
        initialValue: type,
        onChanged: onChangedType,
        validator: (type) {
          if (type!.isEmpty) {
            return 'The type cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Type',
        ),
      );

  Widget buildSize() => TextFormField(
        maxLines: 1,
        initialValue: size,
        onChanged: onChangedSize,
        validator: (size) {
          if (size!.isEmpty) {
            return 'The size cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Size',
        ),
      );

  Widget buildBreed() => TextFormField(
        maxLines: 1,
        initialValue: breed,
        onChanged: onChangedBreed,
        validator: (breed) {
          if (breed!.isEmpty) {
            return 'The breed cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'breed',
        ),
      );

  Widget buildGender() => TextFormField(
        maxLines: 1,
        initialValue: gender,
        onChanged: onChangedGender,
        validator: (gender) {
          if (gender!.isEmpty) {
            return 'The gender cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Gender',
        ),
      );
  Widget buildDescription() => TextFormField(
        maxLines: 1,
        initialValue: description,
        onChanged: onChangedDescription,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Description',
        ),
      );

  Widget buildPersona1() => TextFormField(
        maxLines: 1,
        initialValue: persona1,
        onChanged: onChangedPersona1,
        validator: (persona1) {
          if (persona1!.isEmpty) {
            return 'The personality cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Personality',
        ),
      );

  Widget buildButton() => SizedBox(
        width: 100,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: onSavedAdoptee,
          child: Text('Save'),
        ),
      );
}
