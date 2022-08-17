import 'package:flutter/material.dart';

import '../../../constants.dart';

class CreatePostAdoption extends StatelessWidget {
  const CreatePostAdoption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        backgroundColor: kbutton2,
      ),
      body: Padding(padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Card(
              margin: EdgeInsets.zero,
              color: kBackground2,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.add_photo_alternate_rounded,
                    color: Colors.black,)),
                  const Text('Add image',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.bold,
                    color: Colors.black, 
                  ),)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('DONATION INFORMATION', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ],

      ),
      ),
    );
  }

  
}