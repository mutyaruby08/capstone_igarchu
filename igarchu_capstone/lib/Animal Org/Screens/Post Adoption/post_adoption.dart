// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';

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
                      itemCount: 10,
                      // itemCount: Adoptee.pets.length,
                      itemBuilder: (context, index) {
                        return Text('adopt now');
                      }
                      // (context, index) {
                      //   return SizedBox(
                      //     height: 300,
                      //     child: PetCard(pets: Adoptee.pets[index]),
                      //   );
                      // },
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
