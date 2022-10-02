import 'package:get/get.dart';

import '../../services/firebase_firestore_services.dart';
import '../Models/donation_models.dart';

class DonationController extends GetxController{
   final FirestoreService database = FirestoreService();
   var donations = <Donation>[].obs;
   var newDonation = {}.obs;
   
}