import 'package:flutter/material.dart';

import '../../constants.dart';

class DonationScreen extends StatefulWidget {
  DonationScreen({Key? key}) : super(key: key);

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Donation'),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
      ),
    );
  }
}