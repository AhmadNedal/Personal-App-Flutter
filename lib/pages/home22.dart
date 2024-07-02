// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:ahmadapi/language.dart';
import 'package:ahmadapi/pages/About.dart';
import 'package:ahmadapi/pages/android.dart';
import 'package:ahmadapi/pages/checkout.dart';
import 'package:ahmadapi/pages/descktop.dart';
import 'package:ahmadapi/pages/home.dart';
import 'package:ahmadapi/pages/ios.dart';
import 'package:ahmadapi/provider/cart.dart';
import 'package:ahmadapi/shared/appbar.dart';
import 'package:ahmadapi/shared/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Home22 extends StatefulWidget {
  const Home22({Key? key}) : super(key: key);

  @override
  State<Home22> createState() => _Home22State();
}
    bool show = false;

class _Home22State extends State<Home22> {
  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    final userses = FirebaseAuth.instance.currentUser;
    bool langu = false;
    accountEmail() {
      if (userses?.email == null) {
        return "Users@gmail.com";
      } else {
        return userses!.email;
      }
    }

    accountname() {
      if (userses?.displayName == null) {
        return "Users";
      } else {
        return userses!.displayName;
      }
    }

    accountimag() {
      if (userses?.photoURL == null) {
        return "https://th.bing.com/th/id/R.19fa7497013a87bd77f7adb96beaf768?rik=144XvMigWWj2bw&riu=http%3a%2f%2fwww.pngall.com%2fwp-content%2fuploads%2f5%2fUser-Profile-PNG-High-Quality-Image.png&ehk=%2bat%2brmqQuJrWL609bAlrUPYgzj%2b%2f7L1ErXRTN6ZyxR0%3d&risl=&pid=ImgRaw&r=0";
      } else {
        return userses!.photoURL;
      }
    }

      
    accountimagbac() {
      if (userses?.photoURL == null) {
        return "https://assets-global.website-files.com/5e29a0c20f2d35836e6bc609/5eeb17f3f726788de8b4d3b7_0620_Blog_Product_Heart.jpg";
      } else {
        return userses!.photoURL;
      }
    }

    


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              color: Color.fromARGB(255, 240, 206, 204),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 33,
                  ),
                  Text(
                    "Ahmad Nedal",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 44, fontFamily: "cont"),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    child: Image.asset("images/any/ahmad.png"),
                    height: 270,
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Text(
                    mobile(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 65, 28),
                        fontSize: 25,
                        fontFamily: "cairo",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Flutter || Android || Java',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 46, 97, 47),
                        fontSize: 19,
                        fontFamily: "cairo",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Card(
                      shadowColor: Color.fromARGB(255, 155, 111, 111),
                      elevation: 33,
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                exper(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 33,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Java",
                                        style: TextStyle(fontSize: 15.5),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Dart",
                                        style: TextStyle(fontSize: 15.5),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Flutter",
                                        style: TextStyle(fontSize: 15.5),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "DataBase",
                                        style: TextStyle(fontSize: 14.5),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Java FX",
                                        style: TextStyle(fontSize: 14.5),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Problem Solving",
                                        style: TextStyle(fontSize: 14.5),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 194, 181, 181),
                                                      width: 2.5)),
                                            ),
                                            Container(
                                              width: 120,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 154, 91, 91),
                                                      width: 2.36)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 27,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 194, 181, 181),
                                                      width: 2.5)),
                                            ),
                                            Container(
                                              width: 110,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 154, 91, 91),
                                                      width: 2.36)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 27,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 194, 181, 181),
                                                      width: 2.5)),
                                            ),
                                            Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 154, 91, 91),
                                                      width: 2.36)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 27,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 194, 181, 181),
                                                      width: 2.5)),
                                            ),
                                            Container(
                                              width: 115,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 154, 91, 91),
                                                      width: 2.36)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 27,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 194, 181, 181),
                                                      width: 2.5)),
                                            ),
                                            Container(
                                              width: 105,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 154, 91, 91),
                                                      width: 2.36)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 27,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 194, 181, 181),
                                                      width: 2.5)),
                                            ),
                                            Container(
                                              width: 108,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 154, 91, 91),
                                                      width: 2.36)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 41,
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 66,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        services(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "cairo",
                          fontSize: 21,
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: Builder(
                      builder: (context) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Android()),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: ListTile(
                                leading: Image.asset(
                                  "images/any/android.png",
                                  width: 40,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Android App ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Create The Application on Android ",
                                    style: TextStyle(fontSize: 11.6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: Builder(
                      builder: (context) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ios()),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: ListTile(
                                leading: Image.asset(
                                  "images/any/ios.png",
                                  width: 42,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Iphone App ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Create The Application on Iphone",
                                    style: TextStyle(fontSize: 11.6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: Builder(
                      builder: (context) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Descktop()),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: ListTile(
                                leading: Image.asset(
                                  "images/any/pc.png",
                                  width: 42,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "desktop Application",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Create a desktop Application",
                                    style: TextStyle(fontSize: 11.6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                ],
              ),
            ),
          ),
          drawer: Drawer(
            backgroundColor: Color.fromRGBO(246, 214, 214, 0.877),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(builder: (context) {
                  return Column(
                    children: [
                      UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(accountimagbac()!),
                              fit: BoxFit.cover),
                        ),
                        currentAccountPicture: CircleAvatar(
                            radius: 55,
                            backgroundImage: NetworkImage(accountimag()!)),
                        accountEmail: Text(accountEmail()!),
                        accountName: Text(accountname()!,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                      ),
                      ListTile(
                          title: Text(
                            home(),
                            style: TextStyle(fontFamily: "cairo", fontSize: 19),
                          ),
                          leading: Icon(Icons.home),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home22(),
                              ),
                            );
                          }),
                      ListTile(
                          title: Text(
                            services(),
                            style: TextStyle(
                              fontFamily: "cairo",
                            ),
                          ),
                          leading: Icon(Icons.shop),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                          }),
                      ListTile(
                          title: Text(prselectedservices(),
                              style: TextStyle(
                                fontFamily: "cairo",
                              )),
                          leading: Icon(Icons.add_shopping_cart),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CheckOut(),
                              ),
                            );
                          }),
                      ListTile(
                          title: Text(abouttme(),
                              style: TextStyle(
                                fontFamily: "cairo",
                              )),
                          leading: Icon(Icons.help_center),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => aboutme()));
                          }),
                      ListTile(
                          title: Text(language(),
                              style: TextStyle(
                                fontFamily: "cairo",
                              )),
                          leading: Icon(Icons.language),
                          onTap: () {
                          setState(() {
                            if(show){show=false; }else {show=true; }
                          });
                          }),


                    show? 
                      InkWell(
                        onTap: () {
                          setState(() {
                            lon = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 42),
                          child: Row(
                            children: [
                              Text("English",
                                  style: TextStyle(
                                    fontFamily: "cairo",
                                  )),
                            ],
                          ),
                        ), )
                    : SizedBox() ,

                    
                    
                      SizedBox(
                        height: 10,
                      ),
                    
                    show? 
                        InkWell(
                        onTap: () {
                          setState(() {
                            lon = true;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 42),
                          child: Row(
                            children: [
                              Text("العربية",
                                  style: TextStyle(
                                    fontFamily: "cairo",
                                  )),
                            ],
                          ),
                        ),
                      )
                    : SizedBox() ,
  
                    
                    
                      ListTile(
                          title: Text(logout(),
                              style: TextStyle(
                                fontFamily: "cairo",
                              )),
                          leading: Icon(Icons.exit_to_app),
                          onTap: () {
                            FirebaseAuth.instance.signOut();
                          }),
                    ],
                  );
                }),
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text("Developed by Ahmad Nedall © 2024",
                      style: TextStyle(fontSize: 15)),
                )
              ],
            ),
          ),
          appBar: AppBar(
              actions: [ProductsAndPrice()], backgroundColor: appbarpin)),
    );
  }
}
