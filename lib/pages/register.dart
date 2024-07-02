// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:ahmadapi/language.dart';
import 'package:ahmadapi/pages/login.dart';
import 'package:ahmadapi/shared/colors.dart';
import 'package:ahmadapi/shared/contants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> _fromstate = GlobalKey();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  bool isscrol = false;
  @override
  void dispose() {
    emailcontroller.dispose();
    passcontroller.dispose();
    super.dispose();
  }

  String str = "";
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    register() async {
      try {
        setState(() {
          isscrol = true;
        });

        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailcontroller.text,
          password: passcontroller.text,
        );
      } on FirebaseAuthException catch (e) {
        if (passcontroller.text.length < 8) {
          setState(() {
            str = 'The password provided is too weak.';
          });
          // e.code == 'weak-password'
        } else if (e.code == 'email-already-in-use') {
          setState(() {
            str = 'The Email already Used';
          });
        } else if (!(passcontroller.text.contains("@"))) {
          setState(() {
            str = 'The Email Is Not Exixt.';
          });
          // e.code == 'weak-password'
        } else {
          setState(() {
            str = 'Erorr Try Agin Late';
          });
        }
      } catch (e) {
        setState(() {
          str = 'Erorr Try Agin Late';
        });
      }

      setState(() {
        isscrol = false;
      });
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        appBar: AppBar(
          title: Text(
            "Register",
            style: TextStyle(color: Colors.white),
          ),
  backgroundColor: Color.fromARGB(255, 90, 90, 205),        ),
        body: Center(
          child: Form(
            key: _fromstate,
            child: Padding(
              padding: const EdgeInsets.all(33.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: decorationTextfield.copyWith(
                            hintText:username(),
                            suffixIcon: Icon(Icons.person)),
                        validator: (name) {
                          return name!.isEmpty
                              ? "The User shoud be not Empty"
                              : null;
                        }),
                    const SizedBox(
                      height: 33,
                    ),
                    TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (name) {
                          return name!.contains(RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                              ? null
                              : "The Email shoud be Exist";
                        },
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: decorationTextfield.copyWith(
                            hintText: enteremail(),
                            suffixIcon: (Icon(Icons.email)))),
                    const SizedBox(
                      height: 33,
                    ),
                    TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: passcontroller,
                        keyboardType: TextInputType.text,
                        obscureText: showpass,
                        decoration: decorationTextfield.copyWith(
                          hintText: enterpass(),
                          suffixIcon: (IconButton(
                              onPressed: () {
                                setState(() {
                                  showpass = !showpass;
                                });
                              },
                              icon: Icon(showpass
                                  ? Icons.remove_red_eye
                                  : Icons.visibility_off))),
                        ),
                        validator: (name) {
                          return name!.length < 8
                              ? "The Password shoud be length upper than 8 charcter"
                              : null;
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      str,
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Builder(builder: (context) {
                      return ElevatedButton(
                        
                        onPressed: () async {
                          if (_fromstate.currentState!.validate()) {
                            await register();
                            if (!mounted) return;
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          } else {
                            setState(() {
                              str = "Erorr";
                            });
                          }
                        },
                        child: isscrol
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(rregisters() ,
                                style: TextStyle(
                                    fontSize: 19,
                              color: Colors.white,),
                              ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll( Color.fromARGB(255, 88, 59, 194)),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(12)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 33,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do not have an account?",
                            style: TextStyle(fontSize: 18)),
                        Builder(builder: (context) {
                          return TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()),
                                );
                              },
                              child: Text('sign in',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18)));
                        })
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
