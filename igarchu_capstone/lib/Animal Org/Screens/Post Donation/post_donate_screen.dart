// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';

import '../../Models/donation_models.dart';
import '../../Widgets/donation_card.dart';
import 'create_post.dart';

class PostDonateScreen extends StatefulWidget {
  PostDonateScreen({Key? key}) : super(key: key);

  @override
  State<PostDonateScreen> createState() => _PostDonateScreenState();
}

class _PostDonateScreenState extends State<PostDonateScreen> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbutton2,
        elevation: 0,
        title: Row(
        children: const [
           Expanded(
            flex: 3,
            child: Text('Post Donation', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),))
        ],
      ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: width,
                  decoration:  BoxDecoration(
                  color: kbutton2,
                  borderRadius: BorderRadius.circular(20),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: 80,
                        width: width/1.3,
                        child: FlatButton(
                                          onPressed: () { 
                                             Navigator.push(
                                              context,
                                            MaterialPageRoute(builder: (context) =>  CreatePostAdoption()),
                                            );
                                           },
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(side: const BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                          style: BorderStyle.solid
                                        ), borderRadius: BorderRadius.circular(20)),
                                        child: const Text('Create Post for Adoption', textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.grey),
                                            ),
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15, right: 15),
                        child: IconButton(
                          onPressed: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CreatePostAdoption()),
                            );
                          }, 
                          icon: const Icon(Icons.add_circle, color: kBackground2, size: 40,)),
                      )
                      // const Icon(Icons.add_circle, color: kBackground2, size: 30,)
                    ],
                  ),
                ),

               Expanded(
                child: ListView.builder(
                  itemCount: Donation.donations.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 560,
                      child: DonationCard(
                        donation: Donation.donations[index],),
                    );
                  },
                  ))                 
              ],
            ),
          ),
        ),
    );
  }
}
