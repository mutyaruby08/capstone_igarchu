// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Donation extends Equatable {

  final int id;
  final String imageUrl; 
  final String orgName;
  final String description;
  final String location;
  final String days;
  double targetAmount;
  
  Donation({
    required this.id,
    required this.imageUrl,
    required this.orgName,
    required this.description,
    required this.location,
    required this.days,
    this.targetAmount = 0,
  });



  @override
  
  List<Object?> get props => (
    [
      id,
      imageUrl,
      orgName,
      description,
      location,
      days,
      targetAmount,
    ]
  );

  Donation copyWith({
    int? id,
    String? imageUrl,
    String? orgName,
    String? description,
    String? location,
    String? days,
    double? targetAmount,
  }){
    return Donation(
      id: id ?? this.id, 
      imageUrl: imageUrl ?? this.imageUrl, 
      orgName: orgName ?? this.orgName, 
      description: description ?? this.description, 
      location: location ?? this.location, 
      days: days ?? this.days,
      targetAmount: targetAmount ?? this.targetAmount,
      );
  }

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'imageUrl': imageUrl,
      'orgName': orgName,
      'description': description,
      'location': location,
      'days': days,
      'targetAmount': targetAmount,
    };
  }

  factory Donation.fromMap(Map<String, dynamic>map){
      return Donation(
        id: map ['id'], 
        imageUrl: map ['imageUrl'], 
        orgName: map ['orgName'], 
        description: map ['description'], 
        location: map ['location'], 
        days: map ['days'],
        targetAmount: map['targetAmount'],
        );
  }

  String toJson() => json.encode(toMap());

  factory Donation.fromJson(String source) => Donation.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  static List<Donation> donations = [
    Donation(
      id: 1, 
      imageUrl: 'assets/images/donation.jpg', 
      orgName: 'Soi Dog', 
      description: 'Every day, Soi Dog Foundation is called upon to rescue animals from abuse, abandonment, sickness or injury. Whether it’s a street dog or cat in need of life-saving medical treatment or our ongoing fight against the dog meat trade, none of it is possible without your support.', 
      location: 'Amphur Thalang, Phuket 83110, Thailand', 
      days: '30 days',
      targetAmount: 10000.00,
      ),
    Donation(
      id: 2, 
      imageUrl: 'assets/images/donation.jpg', 
      orgName: 'Rescue Dog', 
      description: 'Every day, Soi Dog Foundation is called upon to rescue animals from abuse, abandonment, sickness or injury. Whether it’s a street dog or cat in need of life-saving medical treatment or our ongoing fight against the dog meat trade, none of it is possible without your support.', 
      location: 'Amphur Thalang, Phuket 83110, Thailand', 
      days: '30 days',
      targetAmount: 20000,
      ),
    Donation(
      id: 2, 
      imageUrl: 'assets/images/donation.jpg', 
      orgName: 'PAWS', 
      description: 'Every day, Soi Dog Foundation is called upon to rescue animals from abuse, abandonment, sickness or injury. Whether it’s a street dog or cat in need of life-saving medical treatment or our ongoing fight against the dog meat trade, none of it is possible without your support.', 
      location: 'Amphur Thalang, Phuket 83110, Thailand', 
      days: '30 days',
      targetAmount: 20000,
      )   
  ];

}
