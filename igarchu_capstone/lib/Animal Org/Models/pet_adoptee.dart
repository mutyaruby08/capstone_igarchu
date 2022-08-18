// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Adoptee {
  int adopteeID;
  String name;
  String color;
  int age;
  String type;
  String size;
  String breed;
  String gender;
  String description;
  String? persona1; //personality sa pet
  String? persona2;
  String? persona3;
  String? persona4;
  String? imageUrl;
  bool? isAdopted;

  Adoptee({
    required this.adopteeID,
    required this.name,
    required this.color,
    required this.age,
    required this.type,
    required this.size,
    required this.breed,
    required this.gender,
    required this.description,
    this.persona1,
    this.persona2,
    this.persona3,
    this.persona4,
    this.imageUrl,
    this.isAdopted = false,
  });

  // @override
  // // TODO: implement props
  // List<Object> get props {
  //   return [
  //     adopteeID,
  //     name,
  //     color,
  //     age,
  //     type,
  //     size,
  //     breed,
  //     gender,
  //     description,
  //     persona1!,
  //     persona2!,
  //     persona3!,
  //     persona4!,
  //     imageUrl!,
  //   ];
  // }

  // Adoptee copyWith({
  //   int? adopteeID,
  //   String? name,
  //   String? color,
  //   int? age,
  //   String? type,
  //   String? size,
  //   String? breed,
  //   String? gender,
  //   String? description,
  //   String? persona1,
  //   String? persona2,
  //   String? persona3,
  //   String? persona4,
  //   String? imageUrl,
  // }) {
  //   return Adoptee(
  //     adopteeID: adopteeID ?? this.adopteeID,
  //     name: name ?? this.name,
  //     color: color ?? this.color,
  //     age: age ?? this.age,
  //     type: type ?? this.type,
  //     size: size ?? this.size,
  //     breed: breed ?? this.breed,
  //     gender: gender ?? this.gender,
  //     description: description ?? this.description,
  //     persona1: persona1 ?? this.persona1,
  //     persona2: persona2 ?? this.persona2,
  //     persona3: persona3 ?? this.persona3,
  //     persona4: persona4 ?? this.persona4,
  //     imageUrl: imageUrl ?? this.imageUrl,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'adopteeID': adopteeID,
  //     'name': name,
  //     'color': color,
  //     'age': age,
  //     'type': type,
  //     'size': size,
  //     'breed': breed,
  //     'gender': gender,
  //     'description': description,
  //     'persona1': persona1,
  //     'persona2': persona2,
  //     'persona3': persona3,
  //     'persona4': persona4,
  //     'imageUrl': imageUrl,
  //   };
  // }

  // factory Adoptee.fromMap(Map<String, dynamic> map) {
  //   return Adoptee(
  //     adopteeID: map['adopteeID'] as int,
  //     name: map['name'] as String,
  //     color: map['color'] as String,
  //     age: map['age'] as int,
  //     type: map['type'] as String,
  //     size: map['size'] as String,
  //     breed: map['breed'] as String,
  //     gender: map['gender'] as String,
  //     description: map['description'] as String,
  //     persona1: map['persona1'] != null ? map['persona1'] as String : null,
  //     persona2: map['persona2'] != null ? map['persona2'] as String : null,
  //     persona3: map['persona3'] != null ? map['persona3'] as String : null,
  //     persona4: map['persona4'] != null ? map['persona4'] as String : null,
  //     imageUrl: map['imageUrl'] as String,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Adoptee.fromJson(String source) =>
  //     Adoptee.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // bool get stringify => true;

  // static List<Adoptee> pets = [
  //   Adoptee(
  //     adopteeID: 101,
  //     name: 'Taffy',
  //     color: 'Brown',
  //     age: 3,
  //     type: 'Dog',
  //     size: 'Medium',
  //     breed: 'Golden Retriever',
  //     gender: 'Male',
  //     description: 'Please adopt me! I like to chew toys.',
  //     persona1: 'gentle',
  //     persona2: 'kind',
  //     persona3: 'loving',
  //     persona4: 'playful',
  //     imageUrl: 'assets/images/Taffy.jpg',
  //   ),
  //   Adoptee(
  //     adopteeID: 102,
  //     name: 'Luna',
  //     color: 'Black',
  //     type: 'Cat',
  //     age: 5,
  //     size: 'Medium',
  //     breed: 'Bombay cat',
  //     gender: 'Female',
  //     description: 'Please adopt me! I like to scratch.',
  //     persona1: 'moody',
  //     persona2: 'behave',
  //     persona3: 'clean',
  //     persona4: 'playful',
  //     imageUrl: 'assets/images/Luna.jpg',
  //   ),
  //   Adoptee(
  //     adopteeID: 103,
  //     name: 'Rufus',
  //     color: 'Black',
  //     type: 'Dog',
  //     age: 2,
  //     size: 'Large',
  //     breed: 'Aspin',
  //     gender: 'Male',
  //     description: 'Please adopt me! I like to chew toys.',
  //     persona1: 'protective',
  //     persona2: 'kind',
  //     persona3: 'loving',
  //     persona4: 'playful',
  //     imageUrl: 'assets/images/Brody.jpg',
  //   ),
  //   Adoptee(
  //     adopteeID: 104,
  //     name: 'Orenji',
  //     color: 'Orange',
  //     type: 'Cat',
  //     age: 6,
  //     size: 'Medium',
  //     breed: 'Egyptian Mau',
  //     gender: 'Male',
  //     description: 'Please adopt me! I like sardines.',
  //     persona1: 'gentle',
  //     persona2: 'kind',
  //     persona3: 'loving',
  //     persona4: 'timid',
  //     imageUrl: 'assets/images/Orenji.jpg',
  //   )
  // ];

  // static fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> doc) {}
}
