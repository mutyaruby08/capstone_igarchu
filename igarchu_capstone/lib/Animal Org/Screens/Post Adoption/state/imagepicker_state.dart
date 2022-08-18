// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';

// import '../../../../services/firebase_storage.dart';

// class _PetImageState extends State<_PetImageStateScreen> {
//   String _imageName = '';
//   File? _image;

//   void uploadImage(FilePickerResult? result, String uid) async {
//     if (result != null) {
//       setState(() {
//         _imageName = result.files.single.name;
//         _image = File(result.files.single.path!);
//       });

//       final firebaseStorage = FirebaseStorageService();
//       // Get download URL of uploaded image
//       final imageURL =
//           await firebaseStorage.upload(_image!, _imageName, uid);
//     }
//   }

//   chooseImage() async {
//     final result = await FilePicker.platform.pickFiles(
//         allowMultiple: false,
//         type: FileType.custom,
//         allowedExtensions: ['png', 'jpg', 'docx']);

//     if (result == null) {
//       return null;
//     }
//     return result;
//   }

//   }