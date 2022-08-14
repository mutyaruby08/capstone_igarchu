import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class PetLover {
  final String? uid;
  final String? adopterName;
  final String? mobileNumber;
  final String? email;

  PetLover({
    this.uid,
    this.adopterName,
    this.mobileNumber,
    this.email,
  });

  String? get getUID => uid;
  String? get getEmail => email;

  Map<String, dynamic> createPetLoverMap(PetLover petLover) {
    return {
      "uid": petLover.uid,
      "name": petLover.adopterName,
      "number": petLover.mobileNumber,
      "email": petLover.email,
    };
  }

  factory PetLover.fromFirestore(DocumentSnapshot doc) {
    Map<dynamic, dynamic>? data = doc.data() as Map<dynamic, dynamic>? ?? {};
    return PetLover(
      uid: data['uid'] ?? '',
      adopterName: data['adoptername'] ?? '',
      mobileNumber: data['mobileNumber'] ?? '',
      email: data['email'] ?? '',
    );
  }
}
