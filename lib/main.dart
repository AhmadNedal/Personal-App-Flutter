import 'package:ahmadapi/firebase_options.dart';
import 'package:ahmadapi/pages/home22.dart';
import 'package:ahmadapi/pages/login.dart';
import 'package:ahmadapi/provider/googlesignin.dart';
import 'package:ahmadapi/provider/cart.dart';
import 'package:ahmadapi/shared/snackpar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MultiProvider(
    providers: [
    ChangeNotifierProvider(create: (context) {
    return Cart();
    }),
    ChangeNotifierProvider(create: (context) {
     return GoogleSignInProvider();
    }),
    ],
    child: MaterialApp(
    title: "myApp",
    debugShowCheckedModeBanner: false,
    home: StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
    return Center(
    child: CircularProgressIndicator(
    color: Colors.white,
      ));
    } else if (snapshot.hasError) {
    return showSnackBar(context, "Something went wrong");
    } else if (snapshot.hasData) {
    return Home22(); // home() OR verify email
    } else {
    return Login();
    }
    },
    )),
    );
  }
}
