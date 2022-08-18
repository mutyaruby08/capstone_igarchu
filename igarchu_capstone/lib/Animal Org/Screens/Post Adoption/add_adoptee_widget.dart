import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Animal%20Org/Models/pet_adoptee.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Post%20Adoption/create_post_form.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import 'provider/adoptees.dart';

class AddAdopteeWidget extends StatefulWidget {
  const AddAdopteeWidget({Key? key}) : super(key: key);

  @override
  State<AddAdopteeWidget> createState() => _AddAdopteeWidgetState();
}

class _AddAdopteeWidgetState extends State<AddAdopteeWidget> {
  final _formKey = GlobalKey<FormState>();
  String adopteeID = '';
  String name = '';
  String color = '';
  String age = '';
  String type = '';
  String size = '';
  String breed = '';
  String gender = '';
  String persona1 = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: kbutton2,
        elevation: 0,
        title: Row(
          children: const [
            Expanded(
                flex: 3,
                child: Text(
                  'Pet Information',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ),
      body: Column(children: [
         const SizedBox(height: 8),
              AdopteeFormWidget(
                onChangedAdopteeID: (adopteeID) => setState(() => this.adopteeID = adopteeID),
                onChangedName: (name) => setState(() => this.name = name),
                onChangedColor: (color) => setState(() => this.color = color),
                onChangedAge: (age) => setState(() => this.age = age),
                onChangedType: (type) => setState(() => this.type = type),
                onChangedSize: (size) => setState(() => this.size = size),
                onChangedBreed: (breed) => setState(() => this.breed = breed),
                onChangedGender: (gender) => setState(() => this.gender = gender),
                onChangedPersona1: (persona1) => setState(() => this.persona1 = persona1),
                onChangedDescription: (description) => setState(() => this.description = description),
                onSavedAdoptee: addAdoptee,
              ),
      ],)
    ));
  }
  //  AlertDialog(
  //       content: Form(
  //         key: _formKey,
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             const Text(
  //               'Add Adoptee',
  //               style: TextStyle(
  //                 fontFamily: 'Poppins',
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 22,
  //               ),
  //             ),
  //             const SizedBox(height: 8),
  //             AdopteeFormWidget(
  //               onChangedAdopteeID: (adopteeID) => setState(() => this.adopteeID = adopteeID),
  //               onChangedName: (name) => setState(() => this.name = name),
  //               onChangedColor: (color) => setState(() => this.color = color),
  //               onChangedAge: (age) => setState(() => this.age = age),
  //               onChangedType: (type) => setState(() => this.type = type),
  //               onChangedSize: (size) => setState(() => this.size = size),
  //               onChangedBreed: (breed) => setState(() => this.breed = breed),
  //               onChangedGender: (gender) => setState(() => this.gender = gender),
  //               onChangedPersona1: (persona1) => setState(() => this.persona1 = persona1),
  //               onChangedDescription: (description) => setState(() => this.description = description),
  //               onSavedAdoptee: addAdoptee,
  //             ),
  //           ],
  //         ),
  //       ),
  //     );

  void addAdoptee() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    } else {
      final adoptee = Adoptee(
        adopteeID: int.parse(adopteeID),
        name: name,
        color: color,
        age: int.parse(age),
        type: type,
        size: size,
        breed: breed,
        gender: gender,
        persona1: persona1,
        description: description,
      );

      final provider = Provider.of<AdopteeProvider>(context, listen: false);
      provider.addAdoptee(adoptee);

      Navigator.of(context).pop();
    }
  }
}
