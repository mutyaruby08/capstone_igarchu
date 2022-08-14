// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';
import 'package:provider/provider.dart';

import '../Widgets/rounded_button.dart';
import '../Widgets/underpart.dart';
import '../Widgets/upside.dart';
import '../services/firebase_auth_services.dart';
import 'homescreen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<FireAuthService>(context);
    return Scaffold(
      body: SafeArea(
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
                  Expanded(
                    flex: 3,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "iGarchu",
                            style: TextStyle(
                                color: kbutton1,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w800),
                          ),
                          const Upside(
                            imgUrl: "assets/images/PetLover.png",
                          ),
                        ]),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      color: kbutton2,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 30.0),
                                TextField(
                                    controller: _emailController,
                                    //change value for email
                                    // onChanged: (value) => ,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          borderSide: BorderSide.none,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "E-mail",
                                        prefixIcon: Icon(Icons.email,
                                            color: kbutton2))),
                                SizedBox(height: 30.0),
                                TextField(
                                    controller: _passwordController,
                                    //change value for password
                                    // onChanged: (value) => ,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          borderSide: BorderSide.none,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "Password",
                                        prefixIcon:
                                            Icon(Icons.key, color: kbutton2))),
                                SizedBox(height: 20.0),
                                RoundedButton(
                                  text: 'LOGIN',
                                  press: () => signIn(authService),
                                ),
                                UnderPart(
                                  title: "Don't have an account?",
                                  navigatorText: "Register here",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                register_screen()));
                                  },
                                ),
                              ])),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void signIn(FireAuthService authService) async {
    // Check if all required fields are filled up
    // Sign user in
    final status = await authService.signIn(
        _emailController.text, _passwordController.text);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
