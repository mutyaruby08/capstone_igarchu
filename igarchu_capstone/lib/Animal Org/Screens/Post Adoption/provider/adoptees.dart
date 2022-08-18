import 'package:flutter/cupertino.dart';
import '../../../Models/pet_adoptee.dart';

class AdopteeProvider extends ChangeNotifier {
  final List<Adoptee> _adoptees = [
    // Adoptee(
    //   adopteeID: 101,
    //   name: 'Taffy',
    //   color: 'Brown',
    //   age: 3,
    //   type: 'Dog',
    //   size: 'Medium',
    //   breed: 'Golden Retriever',
    //   gender: 'Male',
    //   description: 'Please adopt me! I like to chew toys.',
    //   persona1: 'gentle',
    //   persona2: 'kind',
    //   persona3: 'loving',
    //   persona4: 'playful',
    //   imageUrl: 'assets/images/Taffy.jpg',
    // ),
  ];

  List<Adoptee> get adoptees =>
      _adoptees.where((adoptee) => adoptee.isAdopted == false).toList();

  // List<Todo> get todosCompleted =>
  //     _todos.where((todo) => todo.isDone == true).toList();

  // void setAdoptee(List<Adoptee> _adoptees) =>
  //     WidgetsBinding.instance.addPostFrameCallback((_) {
  //       _adoptees = adoptees;
  //       notifyListeners();
  //     });

  void addAdoptee(Adoptee adoptee) {
    _adoptees.add(adoptee);

    notifyListeners();
  }

  void removeAdoptee(Adoptee adoptee) {
    _adoptees.remove(adoptee);

    notifyListeners();
  }

  // bool toggleTodoStatus(Todo todo) {
  //   todo.isDone = !todo.isDone;
  //   notifyListeners();

  //   return todo.isDone;
  // }

  void updateTodo(
    Adoptee adoptee,
    int adopteeID,
    String name,
    String color,
    int age,
    String type,
    String size,
    String breed,
    String gender,
    String description,
    String persona1,
  ) {
    adoptee.adopteeID = adopteeID;
    adoptee.name = name;
    adoptee.color = color;
    adoptee.age = age;
    adoptee.type = type;
    adoptee.size = size;
    adoptee.breed = breed;
    adoptee.gender = gender;
    adoptee.description = description;
    adoptee.persona1 = persona1;

    notifyListeners();
  }
}
