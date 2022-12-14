import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:igarchu_capstone/classes/petLover.dart';

class FirestoreService {
  final _firestore = FirebaseFirestore.instance;

  Future<void> addUser(PetLover user, auth.UserCredential userCred) async {
    CollectionReference userCollection = _firestore.collection('users');

    return await userCollection
        .doc(userCred.user!.uid)
        .set(PetLover(uid: userCred.user!.uid).createPetLoverMap(user));
  }

  Stream<PetLover?> getUser(String uid) {
    CollectionReference userCollection = _firestore.collection('users');

    return userCollection
        .doc(uid)
        .snapshots()
        .map((snapshot) => PetLover.fromFirestore(snapshot));
  }
}
