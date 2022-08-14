import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:igarchu_capstone/classes/petLover.dart';

import 'firebase_firestore_services.dart';

class FireAuthService {
  final _firebaseAuth = auth.FirebaseAuth.instance;

  PetLover? userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return PetLover(uid: user.uid, email: user.email);
  }

  Stream<PetLover?>? get user {
    return _firebaseAuth.authStateChanges().map(userFromFirebase);
  }

  Future<dynamic> signUp(PetLover user, String password) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: user.email!,
        password: password,
      );
      final firestore = FirestoreService();
      firestore.addUser(user, credential);
      return userFromFirebase(credential.user);
    } on auth.FirebaseAuthException catch (e) {
      print(e);
    }
  }

  Future<dynamic> signIn(String email, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return userFromFirebase(credential.user);
    } on auth.FirebaseAuthException catch (e) {
      return e;
    }
  }

  Future<dynamic> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
