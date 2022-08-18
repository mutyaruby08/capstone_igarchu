// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Post%20Adoption/pet_card.dart';
import 'package:provider/provider.dart';
import '../../Models/pet_adoptee.dart';
import 'provider/adoptees.dart';

class AdopteeList extends StatelessWidget {
  const AdopteeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AdopteeProvider>(context);
    final adoptees = provider.adoptees;

    return adoptees.isEmpty
        ? Center(
            child: Text(
              'No adoptees yet.',
              style: TextStyle(fontSize: 20),
            ),
          )
        : ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            separatorBuilder: (context, index) => Container(height: 8),
            itemCount: adoptees.length,
            itemBuilder: (context, index) {
              final adoptee = adoptees[index];

              return PetCard(pets: adoptee);
            },
          );
  }
}