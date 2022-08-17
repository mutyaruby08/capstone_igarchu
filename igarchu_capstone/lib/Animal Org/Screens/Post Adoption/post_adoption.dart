// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';

import '../../Models/pet_adoptee.dart';

class PostAdoptScreen extends StatefulWidget {
  PostAdoptScreen({Key? key}) : super(key: key);

  @override
  State<PostAdoptScreen> createState() => _PostAdoptScreenState();
}

class _PostAdoptScreenState extends State<PostAdoptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Adoptees'),
          backgroundColor: kbutton2,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: Adoptee.pets.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 300,
                        child: PetCard(pets: Adoptee.pets[index]),
                      );
                    },
                  ),
                )
              ],
            )));
    // return SafeArea(
    //     child: Scaffold(
    //   body: Column(
    //     children: [
    //       const Spacer(),
    //       image != null? Image.file(image!,
    //       width: 160,
    //       height: 160,
    //       ): const FlutterLogo(size: 160)
    //     ],
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     heroTag: UniqueKey(),
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //     backgroundColor: primaryColor,
    //     onPressed: () => pickImage(),
    //     // () => showDialog(
    //     //   context: context,
    //     //   builder: (){},
    //     //   barrierDismissible: true,
    //     // ),
    //     child: const Icon(Icons.add),
    //   ),
    // ));
  }
}

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
              child: Image.network(pets.imageUrl, fit: BoxFit.cover),
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
    // return Padding(
    //
    //   child: Container(
    //     height: 500,
    //     child: ExpandableNotifier(
    //       child: Card(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10.0),
    //         ),
    //         child: Column(
    //           children: [
    //             Container(
    //               height: 100,
    //               width: 100,
    //               child: Image.network(pets.imageUrl, fit: BoxFit.cover),
    //             ),
    //             Row(
    //               children: [
    //                 Text(' ${pets.name},',
    //                     style: TextStyle(
    //                         fontSize: 20, fontWeight: FontWeight.bold)),
    //                 Text(' $tempAge yrs old',
    //                     style: TextStyle(
    //                         fontSize: 18, fontWeight: FontWeight.bold)),
    //               ],
    //             ),
    //             ScrollOnExpand(
    //               child: ExpandablePanel(
    //                 header: Text('  Pet Information',
    //                     style: TextStyle(
    //                         fontSize: 18, fontWeight: FontWeight.bold)),
    //                 collapsed: Column(children: [
    //                   //gender
    //                   // Text(gender == true ? 'Male' : 'Female', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
    //                 ]),
    //                 expanded: Column(
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 5),
    //                     Text(' Pet ID: $adopteeId',
    //                         style: TextStyle(
    //                             fontSize: 15, fontWeight: FontWeight.bold)),
    //                     SizedBox(height: 5),
    //                     Text(' Gender: ${pets.gender}',
    //                         style: TextStyle(
    //                             fontSize: 15, fontWeight: FontWeight.bold)),
    //                     SizedBox(height: 5),
    //                     Text(' Breed: ${pets.breed}',
    //                         style: TextStyle(
    //                             fontSize: 15, fontWeight: FontWeight.bold)),
    //                     SizedBox(height: 5),
    //                     Text(' Description: ${pets.description}',
    //                         style: TextStyle(
    //                             fontSize: 15, fontWeight: FontWeight.bold)),
    //                     SizedBox(height: 5),
    //                     Text(' Color: ${pets.color}',
    //                         style: TextStyle(
    //                             fontSize: 15, fontWeight: FontWeight.bold)),
    //                     SizedBox(height: 5),
    //                     Text(' Type: ${pets.type}',
    //                         style: TextStyle(
    //                             fontSize: 15, fontWeight: FontWeight.bold)),
    //                     SizedBox(height: 5),
    //                     Text(' Size: ${pets.size}',
    //                         style: TextStyle(
    //                             fontSize: 15, fontWeight: FontWeight.bold)),
    //                     SizedBox(height: 5),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
