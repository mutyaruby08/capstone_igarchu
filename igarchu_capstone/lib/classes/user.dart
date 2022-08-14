import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class User {
  final String? uid;
  final String? email;

  User({
    this.uid,
    this.email,
  });

  String? get getUID => uid;

  String? get getEmail => email;

  Map<String, dynamic> createUserMap(auth.UserCredential userCred) {
    return {
      "uid": userCred.user!.uid,
      "email": userCred.user!.email,
    };
  }

  factory User.fromFirestore(DocumentSnapshot doc) {
    Map<dynamic, dynamic>? data = doc.data() as Map<dynamic, dynamic>? ?? {};
    return User(
      uid: data['uid'] ?? '',
      email: data['email'] ?? '',
    );
  }
}
