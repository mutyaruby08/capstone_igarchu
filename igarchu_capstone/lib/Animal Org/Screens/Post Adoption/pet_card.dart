// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../Models/pet_adoptee.dart';

class PetCard extends StatelessWidget {
  final Adoptee pets;

  const PetCard({Key? key, required this.pets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    String tempAge = pets.age.toString();
    String adopteeId = pets.adopteeID.toString();
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: kBackground1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text('Pet ID: $adopteeId',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            height: 200,
            width: 500,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              // child: Image.network(pets.imageUrl, fit: BoxFit.cover),
              child: Image.network('assets/images/Luna.jpg'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text(' ${pets.name},',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(' $tempAge yrs old',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kBackground2,
                      ),
                      onPressed: () {},
                      child: Text('Edit Pet Information',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
