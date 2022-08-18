// import 'package:cloud_firestore/cloud_firestore.dart';

// import '../../../Models/pet_adoptee.dart';

// class DatabaseService {
//   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

//   Stream<List<Adoptee>> getAdoptee() {
//     return _firebaseFirestore
//         .collection('Adoptees')
//         .snapshots()
//         .map((snapshot) {
//       return snapshot.docs.map((doc) => Adoptee.fromSnapshot(doc)).toList();
//     });
//   }
// }
