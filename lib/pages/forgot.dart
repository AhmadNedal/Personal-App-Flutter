import 'package:ahmadapi/shared/colors.dart';
import 'package:ahmadapi/shared/contants.dart';
import 'package:ahmadapi/shared/snackpar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Forgot extends StatefulWidget {
  Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final emailcontroller = new TextEditingController();
  GlobalKey<FormState> _fromstate = GlobalKey();
  bool isloding = false;
  String str = "";

  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    forgots() async {
      showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          });

      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: emailcontroller.text);
                    showSnackBar(context, " Check Your Eamil to Reset Password ");

      } on FirebaseAuthException catch (e) {
                    showSnackBar(context, "Error : ${e.code}");

      }
      if (!mounted) return;
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('forgot password'),
        backgroundColor: appbarGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Form(
            key: _fromstate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Enter Your Email To Reset Your Password '),
                SizedBox(
                  height: 33,
                ),
                TextField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Enter Your Email : ",
                        suffixIcon: (Icon(Icons.email)))),
                SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (_fromstate.currentState!.validate()) {
                      await forgots();
                      if (!mounted) return;
                    } else {
                      setState(() {
                        str = "Erorr";
                      });
                    }
                  },
                  child: isloding
                      ? CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(
                          "Reset password",
                          style: TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
