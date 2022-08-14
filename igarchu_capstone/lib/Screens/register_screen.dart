// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import '../widgets/textfield_container.dart';

class register_screen extends StatefulWidget {
  const register_screen({Key? key}) : super(key: key);

  @override
  State<register_screen> createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Container(
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
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Register',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      const SizedBox(
                        height: 15,
                      ),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              TextFieldContainer(
                                child: TextFormField(
                                  validator: (val) =>
                                      val!.isEmpty ? 'Enter an email.' : null,
                                  cursorColor: Color.fromRGBO(90, 53, 44, 1),
                                  decoration: const InputDecoration(
                                    icon: Icon(
                                      Icons.email,
                                      color: Color.fromRGBO(90, 53, 44, 1),
                                    ),
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
