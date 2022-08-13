

// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Screens/animal_org.dart';
import 'package:igarchu_capstone/Widgets/rounded_button.dart';

import '../Widgets/underpart.dart';
import '../constants.dart';
import '../widgets/textfield_container.dart';
import 'login_screen.dart';
import 'pet_lover_register_scr.dart';

class register_screen extends StatefulWidget {

  // final Function toggleView;
  //  register_screen({required this.toggleView});


  @override
  State<register_screen> createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {
  final _formKey = GlobalKey<FormState>();
  bool isHidden = true;
  String dropdownValue = "Pet Lover";
  var dropdownItems = ["Pet Lover", "Animal Shelter",];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child:Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width),
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                kPrimaryLightColor,
                kPrimaryLightColor,
              ], begin: Alignment.topLeft, end: Alignment.centerRight),
            ), 
                child: Column(
                  children: [
                   SizedBox(height: 30,),
                   
                   Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/register.png'),
                        fit: BoxFit.fill,
                        ),

                    ),
                   ),
                   
                    Container(
                          width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(236, 167, 102, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  <Widget>[
                            
                           SizedBox(
                                height: 20,
                              ),
                            Text('REGISTER', 
                            style: TextStyle(
                              fontSize: 30, 
                              fontFamily: 'Poppins', 
                              fontWeight: FontWeight.bold, 
                              color: Colors.black)),
                             SizedBox(
                                height: 20,
                              ), 

                              Form(
                                key: _formKey,
                                child: Column(children: [
                                  TextFieldContainer(
                                    child: TextFormField(
                                      validator: (val) =>
                                            val!.isEmpty ? 'Enter Full Name.' : null,
                                      cursorColor:Colors.red,
                                      decoration: const InputDecoration(
                                        icon: Icon(
                                          Icons.person,
                                          color: kbutton2,
                                        ),
                                        hintText:"Name",
                                        hintStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),

                                  TextFieldContainer(
                                    child: TextFormField(
                                      validator: (val) =>
                                            val!.isEmpty ? 'Enter an email.' : null,
                                      cursorColor:Colors.red,
                                      decoration: const InputDecoration(
                                        icon: Icon(
                                          Icons.email,
                                          color:kbutton2,
                                        ),
                                        hintText:"Email",
                                        hintStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),

                                  TextFieldContainer(
                                      child: TextFormField(
                                        // obscureText: isHidden,
                                        validator: (val) => val!.length < 6
                                            ? 'Enter a password atleast 6 character long.'
                                            : null,
                                        // onChanged: (val) {
                                        //   setState(() => password = val);
                                        // },
                                        decoration: const InputDecoration(
                                          icon: Icon(
                                            Icons.lock,
                                            color: kbutton2,
                                          ),
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                        ),
                                          // suffix: InkWell(
                                          //   onTap: togglePasswordView,
                                          //   child: Icon(
                                          //     isHidden
                                          //         ? Icons.visibility
                                          //         : Icons.visibility_off,
                                          //   ),
                                          // ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),

                                    Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Select User Role",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kbutton2,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      child: DropdownButton(
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: kbutton2,
                                        ),
                                        value: dropdownValue,
                                        onChanged: (String? value) {
                                          setState(() {
                                            dropdownValue = value!;
                                          });
                                        },
                                        items: dropdownItems.map((String item) {
                                          return DropdownMenuItem(
                                              child: Text(item), value: item);
                                        }).toList(),
                                      ),
                                    ),
                                  ]),
                      
                                  RoundedButton(
                                    text: 'REGISTER',
                                    press: () {
                                      if (dropdownValue == "Pet Lover") {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    petLoverScreen()));
                                      } 
                                      else if (dropdownValue == "Animal Shelter Org") {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    animalOrgScreen()));
                                        }                                  
                                    },
                                    ),

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  
                                  UnderPart(
                                        title: "Already have an account?",
                                        navigatorText: "Login here",
                                        onTap: () {
                                          // widget.toggleView();
                                          Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder: (_) => const LoginScreen()),
                                          );
                                        }),
                                   SizedBox(
                                    height: 30,
                                  ),     
                                ],)
                              )
                        ],)
                        ), 
                  ],
                ),)
                 
                  ),)
      ), 
    );
  }
  // void togglePasswordView() {
  //   setState(() {
  //     isHidden = !isHidden;
  //   });
  // }
}