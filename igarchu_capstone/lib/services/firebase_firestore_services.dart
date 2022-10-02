import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:igarchu_capstone/Animal%20Org/Models/donation_models.dart';
import 'package:igarchu_capstone/classes/petLover.dart';
import 'package:igarchu_capstone/services/firebase_auth_services.dart';

class FirestoreService {
  final FireAuthService _auth = FireAuthService();
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


  Stream<List<Donation>> getDonations(){
    return _firestore.collection('donations').snapshots().map((snapshot){
      return snapshot.docs.map((doc) => Donation.fromSnapshot(doc)).toList();
    });
    

  }

  Future<void> addDonations(Donation donation){
   return _firestore.collection('donations').add(donation.toMap());
  }


}


