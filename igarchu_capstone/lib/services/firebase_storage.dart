import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final firebaseStorage = FirebaseStorage.instance;

  Future<dynamic> upload(File image, String imageName, String uid) async {
    try {
      final reference = firebaseStorage.ref('$uid/files/$imageName');

      await reference.putFile(image).then((value) => print('Image uploaded'));

      return await reference.getDownloadURL();
    } catch (error) {
      return error;
    }
  }
}
