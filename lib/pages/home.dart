// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:ahmadapi/language.dart';
import 'package:ahmadapi/model/item.dart';
import 'package:ahmadapi/pages/details_screen.dart';
import 'package:ahmadapi/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    // final userses = FirebaseAuth.instance.currentUser;

    return Scaffold(

          body: Column(
              children: [
                SizedBox(
                  height: 100,
                  
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
                                  builder: (context) =>
                                      Details(product: itemindex[0])),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: ListTile(
                                leading: Image.asset(
                                  "images/any/flutternew.png",
                                  width: 40,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Flutter App ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Create The Application By Dart || Flutter ",
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
                                  builder: (context) =>
                                      Details(product: itemindex[1])),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: ListTile(
                                leading: Image.asset(
                                  "images/any/htmlcss.png",
                                  width: 44,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Website",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Create The Website",
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
                                  builder: (context) =>
                                      Details(product: itemindex[2])),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: ListTile(
                                leading: Image.asset(
                                  "images/any/c++.jpg",
                                  width: 42,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "C++ || Problem Solving",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Problem solving in Codeforces",
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
                SizedBox(height: 50,),
            
              ],
            ),
          
        
          appBar: AppBar(
            iconTheme: IconThemeData(color: Color.fromARGB(255, 50, 31, 116) ),
            backgroundColor:Color.fromARGB(255, 233, 237, 240),
            title: Text(services() , style: TextStyle(fontFamily: "cairo",fontSize: 19 , color:Color.fromARGB(255, 50, 31, 116)),),
          ));

  }
}
