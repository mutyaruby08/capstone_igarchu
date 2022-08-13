import 'package:flutter/material.dart';

import '../Widgets/rounded_button.dart';
import '../Widgets/underpart.dart';
import '../constants.dart';
import '../widgets/textfield_container.dart';
import 'login_screen.dart';

class animalOrgScreen extends StatefulWidget {
  const animalOrgScreen({Key? key}) : super(key: key);

  @override
  State<animalOrgScreen> createState() => _animalOrgScreenState();
}

class _animalOrgScreenState extends State<animalOrgScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isHidden = true;
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
                    Container(
                      width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(236, 167, 102, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Column(children:  [
                           const SizedBox(
                                height: 20,
                              ),
                             const Text('CREATE ACCOUNT', 
                            style: TextStyle(
                              fontSize: 30, 
                              fontFamily: 'Poppins', 
                              fontWeight: FontWeight.bold, 
                              color: Colors.black)),
                            const SizedBox(
                                height: 20,
                              ),
                            Form(
                              key: _formKey,
                              child: Column(
                              children: [
                                TextFieldContainer(
                                    child: TextFormField(
                                      validator: (val) =>
                                            val!.isEmpty ? 'Enter Organization Name' : null,
                                      cursorColor:Colors.red,
                                      decoration: const InputDecoration(
                                        icon: Icon(
                                          Icons.person,
                                          color: kbutton2,
                                        ),
                                        hintText:"Organization Name",
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
                                            val!.isEmpty ? 'Enter Address' : null,
                                      cursorColor:Colors.red,
                                      decoration: const InputDecoration(
                                        icon: Icon(
                                          Icons.person,
                                          color: kbutton2,
                                        ),
                                        hintText:"Location",
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
                                            val!.isEmpty ? 'Enter 11 digits number.' : null,
                                      cursorColor:Colors.red,
                                      decoration: const InputDecoration(
                                        icon: Icon(
                                          Icons.contact_phone,
                                          color: kbutton2,
                                        ),
                                        hintText:"Contact Number",
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
                                
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  RoundedButton(
                                    text: 'REGISTER',
                                    press: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder: (_) => const LoginScreen()),
                                          );
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
                                  const SizedBox(
                                    height: 30,
                                  ),

                              ],
                            ))  
                        ],),
                    )
                  ],
                ),)
                 
                  ),)
      ), 
    );
  }
}