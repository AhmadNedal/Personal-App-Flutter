// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ahmadapi/language.dart';
import 'package:ahmadapi/pages/forgot.dart';
import 'package:ahmadapi/pages/home22.dart';
import 'package:ahmadapi/pages/register.dart';
import 'package:ahmadapi/provider/googlesignin.dart';
import 'package:ahmadapi/shared/contants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  void dispose() {
    emailcontroller.dispose();
    passcontroller.dispose();
    super.dispose();
  }

  bool showpass = true;
  bool isloging = false;
  String str = "";

  @override
  Widget build(BuildContext context) {
    final googleprov = Provider.of<GoogleSignInProvider>(context);
    singin() async {
      setState(() {
        isloging = true;
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Image(image: AssetImage("images/icons/palestine.png"))));

      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailcontroller.text, password: passcontroller.text);
        Navigator.pop(context);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home22()));
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        if (e.code == 'user-not-found') {
          setState(() {
            str = 'No user found for that email';
          });
        } else if (e.code == 'wrong-password') {
          setState(() {
            str = 'Wrong password provided for that user';
          });
        } else {
          setState(() {
            str = 'Erorr Try Aging';
          });
        }
      }
      setState(() {
        isloging = false;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              sign(),
              style: TextStyle(fontFamily: "cairo",color: Colors.white),
            ),
            backgroundColor: Color.fromARGB(255, 90, 90, 205),
          ),
          body: SingleChildScrollView(
              child: Center( 
            child: Padding(
              padding: const EdgeInsets.all(33.0),
              child: Column(
                  children: [
                  
                Container(
                    width: 275,
                    child: Image.asset("images/any/loggin.jpg"),
                  ),
                  SizedBox(height: 20,),
                    TextField(
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: decorationTextfield.copyWith(
                            hintText: enteremail() , hintStyle: TextStyle(fontFamily: "cairo",),
                            suffixIcon: (Icon(Icons.email)))),
              
                    const SizedBox(
                      height: 33,
                    ),
            
                    TextField(
                        controller: passcontroller,
                        keyboardType: TextInputType.text,
                        obscureText: showpass,
                        decoration: decorationTextfield.copyWith(
                          hintText: enterpass(),hintStyle: TextStyle(fontFamily: "cairo",),
                          suffixIcon: (IconButton(
                              onPressed: () {
                                setState(() {
                                  showpass = !showpass;
                                });
                              },
                              icon: Icon(showpass
                                  ? Icons.remove_red_eye
                                  : Icons.visibility_off))),
                        )),
            
                    const SizedBox(
                      height: 5,
                    ),
              
                    Text(
                      str,
                      style: TextStyle(fontSize: 18 , fontFamily: "cairo",),
                    ),
            
              ElevatedButton(
                      onPressed: () async {
                        await singin();
                      },
                      child: isloging
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              sign(),
                              style:
                                  TextStyle( fontFamily: "cairo",fontSize: 18, color: Colors.white),
                            ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 90, 90, 205)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
              
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Forgot()),
                          );
                        },
                        child: Text(
                        forget(),
                          style:
                              TextStyle(
                                fontFamily: "cairo",
                                decoration: TextDecoration.underline),
                        )),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(donthavaaccount(),
                            style: TextStyle(fontSize: 18 ,fontFamily: "cairo",)),
                        Builder(builder: (context) {
                          return TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()),
                                );
                              },
                              child: Text( createaccount(),
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "cairo",
                                    decoration: TextDecoration.underline,
                                  )));
                        })
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
        
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.6,
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Text("OR" , style: TextStyle(fontFamily: "cairo",),),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 0.6,
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
              
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              googleprov.googlelogin();
                            },
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 106, 31, 119),
                                      width: 1)),
                              child: SvgPicture.asset(
                                "images/icons/google.svg",
                                color: const Color.fromARGB(255, 122, 41, 136),
                                height: 27,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                
                
                
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Builder(builder: (context) {
                                return TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home22()),
                                      );
                                    },
                                    child: Text(skip(),
                                    textAlign: TextAlign.end,
                                        style: TextStyle(fontFamily: "cairo",
                                        fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          decoration: TextDecoration.underline,
                                        )));
                              }),
                    ],
                  ),
                
                
                  ]),
            ),
          ))),
    );
  }
}
