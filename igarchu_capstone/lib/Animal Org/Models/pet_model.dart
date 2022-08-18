import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

class Pet {
  late String adopteeID;
  late String name;
  late String color;
  late String age;

  Pet({
    this.adopteeID = '',
    this.name = '',
    this.age = '',
    this.color = '',
  });

  Pet.fromJson(Map<String, dynamic> json) {
    adopteeID = json['adopteeID'] ?? '';
    name = json['name'] ?? '';
    color = json['color'] ?? '';
    age = json['age'] ?? '';
  }

  Map<String, dynamic> get json => {
        'adopteeID': adopteeID,
        'name': name,
        'age': age,
        'color': color,
      };

  Map<String, dynamic> toJson() {
    return json;
  }

  log() {
    if (kDebugMode) {
      print(json);
    }
  }
}

// PET CONTROLLER

class PetController with ChangeNotifier {
  final Box petCache = Hive.box('pet');
  List<Pet> data = [];


}


// InputWidget

class InputWidget extends StatefulWidget {
  //
}
