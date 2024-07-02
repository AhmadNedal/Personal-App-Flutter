// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:ahmadapi/language.dart';
import 'package:ahmadapi/model/item.dart';
import 'package:ahmadapi/pages/details_screen.dart';
import 'package:ahmadapi/provider/cart.dart';
import 'package:ahmadapi/shared/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    // final userses = FirebaseAuth.instance.currentUser;

    return Scaffold(

          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 700,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3 / 2.9,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 33),
                        itemCount: itemall.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Details(product: itemall[index]),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  height: 192,
                                  child: Card(
                                    color: Color.fromARGB(255, 233, 237, 240),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            width: 79,
                                            child: Padding(
                                              padding: const EdgeInsets.all(19.0),
                                              child: Image.asset(
                                                  fit: BoxFit.cover,
                                                  itemall[index].imgPath),
                                            )),
                                        Text(itemall[index].name),
                                        Text(itemall[index].lang),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("${itemall[index].price}"),
                                            IconButton(
                                                onPressed: () {
                                                  carttt.add(itemall[index]);
                                                },
                                                icon: Icon(Icons.add))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                        }),
                  ),
                ),
                SizedBox(height: 50,),
                Text(information(),style: TextStyle(fontFamily: "cairo", fontSize: 13),),
            
              ],
            ),
          ),
        
          appBar: AppBar(
            iconTheme: IconThemeData(color: Color.fromARGB(255, 50, 31, 116) ),
            actions: [ProductsAndPrice()],      
            backgroundColor:Color.fromARGB(255, 233, 237, 240),
            title: Text(services() , style: TextStyle(fontFamily: "cairo",fontSize: 19 , color:Color.fromARGB(255, 50, 31, 116)),),
          ));

  }
}
