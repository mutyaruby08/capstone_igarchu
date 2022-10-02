
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:igarchu_capstone/Animal%20Org/Models/donation_models.dart';
import 'package:igarchu_capstone/services/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constants.dart';
import '../../../services/firebase_firestore_services.dart';
import '../../Controllers/donation_controller.dart';

class CreatePostAdoption extends StatelessWidget {
  CreatePostAdoption({Key? key}) : super(key: key);
  final DonationController donationController = Get.put(DonationController()); 

  StorageService storage = StorageService();
  FirestoreService database = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        backgroundColor: kbutton2,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: kPrimaryLightColor,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const Text('DONATION INFORMATION', style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          _buildTextFormField(
            'Organization ID',
            'ID',
            donationController
            ),
          _buildTextFormField(
            'Organization Name',
            'name',
            donationController
            ),
          _buildTextFormField(
            'Description',
            'description',
            donationController
            ),
          _buildTextFormField(
            'Location',
            'location',
            donationController
            ),
          _buildTextFormField(
            'Period of Appeal',
            'days',
            donationController
            ),
          _buildTextFormField(
            'Target Amount',
            'targetAmount',
            donationController
            ),

          const SizedBox(height: 20),
          Container(
            height: 50,
            width: 100,
            child: Card(
              margin: EdgeInsets.zero,
              color: kBackground2,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () async{
                      ImagePicker _picker = ImagePicker();
                      final XFile? _image = await _picker.pickImage(source: ImageSource.gallery);

                      if(_image == null){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('No image was selected.'),),
                        );
                      if(_image != null){
                        await storage.uploadImage(_image);
                        var imageUrl = await storage.getDownloadURL(_image.name);

                        donationController.newDonation.update(
                          'imageUrl', (_) => imageUrl, 
                          ifAbsent: ()=> imageUrl);

                        // print(donationController.newDonation['imageUrl']);
                      }
                      }
                    }, 
                    icon: const Icon(Icons.add_photo_alternate_rounded,
                    color: Colors.black,)),
                  const Text('Add image',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight:FontWeight.bold,
                    color: Colors.black, 
                  ),)
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: kbutton1,
                          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                        ),
                        onPressed: (){
                          database.addDonations(Donation(
                            id: donationController.newDonation['id'], 
                            imageUrl: donationController.newDonation['imageUrl'], 
                            orgName: donationController.newDonation['orgName'], 
                            description: donationController.newDonation['description'], 
                            location: donationController.newDonation['location'], 
                            days: donationController.newDonation['days'],
                            targetAmount: donationController.newDonation['targetAmount']));
                        }, 
                        child: const Text('Post', style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),)),
          ),

        ],
        
      ),
      ),
    );
  }

   TextFormField _buildTextFormField(
    String hintText,
    String name,
    DonationController donationController,
    ) {
    return TextFormField(
          decoration: InputDecoration(hintText: hintText),
          onChanged: (value) {
            donationController.newDonation.update(
              name, (_) => value,
              ifAbsent: () => value,
            );
          },
        );
  }

  
}