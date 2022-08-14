// ignore_for_file: unnecessary_const

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Screens/Pawtest/ptest_screens.dart';
import 'package:igarchu_capstone/Widgets/rounded_button.dart';
import 'package:igarchu_capstone/services/firebase_auth_services.dart';
import 'package:provider/provider.dart';

import '../Widgets/underpart.dart';
import '../Widgets/upside.dart';
import '../classes/petLover.dart';
import '../constants.dart';
import '../widgets/textfield_container.dart';
import 'login_screen.dart';

class register_screen extends StatefulWidget {
  // final Function toggleView;
  //  register_screen({required this.toggleView});

  @override
  State<register_screen> createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final authService = Provider.of<FireAuthService>(context);
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
            child: Container(
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
              Padding(
                padding: EdgeInsets.only(top: 130.0),
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(236, 167, 102, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('REGISTER',
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
                              children: <Widget>[
                                TextFieldContainer(
                                  child: TextFormField(
                                    controller: _nameController,
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter Name.' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.person,
                                        color: kbutton2,
                                      ),
                                      hintText: "Name",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                TextFieldContainer(
                                  child: TextFormField(
                                    controller: _mobileNumberController,
                                    validator: (val) => val!.isEmpty
                                        ? 'Enter 11 digits number.'
                                        : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.contact_phone,
                                        color: kbutton2,
                                      ),
                                      hintText: "Mobile Number",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                TextFieldContainer(
                                  child: TextFormField(
                                    controller: _emailController,
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter an email.' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.email,
                                        color: kbutton2,
                                      ),
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                TextFieldContainer(
                                  child: TextFormField(
                                    controller: _passwordController,
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
                                const SizedBox(
                                  height: 20,
                                ),
                                RoundedButton(
                                  text: 'REGISTER',
                                  press: () => register(authService),
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
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const LoginScreen()),
                                      );
                                    }),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ))
                      ],
                    )),
              ),
            ],
          ),
        )),
      )),
    );
  }

  void register(FireAuthService authService) async {
    // Check if all required fields are filled up
    final user = PetLover(
      adopterName: _nameController.text,
      mobileNumber: _mobileNumberController.text,
      email: _emailController.text,
    );

    final status = await authService.signUp(user, _passwordController.text);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PawtestScreen()));
  }
  // void togglePasswordView() {
  //   setState(() {
  //     isHidden = !isHidden;
  //   });
  // }

}
