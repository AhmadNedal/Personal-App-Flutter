import 'package:ahmadapi/language.dart';
import 'package:ahmadapi/model/item.dart';
import 'package:ahmadapi/pages/details_screen.dart';
import 'package:ahmadapi/provider/cart.dart';
import 'package:ahmadapi/shared/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Descktop extends StatefulWidget {
  const Descktop({super.key});

  @override
  State<Descktop> createState() => _DescktopState();
}

class _DescktopState extends State<Descktop> {
  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            
            children: [
              SizedBox(height: 35,),
              Text("Descktop Plan ", style: TextStyle(fontSize: 37 , fontFamily: "cairo" , fontWeight: FontWeight.bold),),
              Container(
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.only(top: 29),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3 / 2.9,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 33),
                      itemCount: itemsDescktop.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(product: itemsDescktop[index]),
                              ),
                            );
                          },
                        
                          // child: SizedBox(
                          //   height: 192,
                          //   child: Card(
                          //     color: Color.fromARGB(255, 233, 237, 240),
                          //     child: Column(
                          //       children: [
                          //         SizedBox(
                          //           height: 10,
                          //         ),
                          //         Container(
                          //             width: 79,
                          //             child: Padding(
                          //               padding: const EdgeInsets.all(19.0),
                          //               child: Image.asset(
                          //                   fit: BoxFit.cover,
                          //                   itemsDescktop[index].imgPath),
                          //             )),
                          //         Text(itemsDescktop[index].name),
                          //         Text(itemsDescktop[index].lang),
                          //         Row(
                          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //           children: [
                          //             Text("${itemsDescktop[index].price}"),
                          //             IconButton(
                          //                 onPressed: () {
                          //                   carttt.add(itemsDescktop[index]);
                          //                 },
                          //                 icon: Icon(Icons.add))
                          //           ],
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // ),
                    
                        );
                      }),
                ),
              ),
              Text("",textAlign: TextAlign.center,style: TextStyle(fontFamily: "cairo", fontSize: 19),),
                                  SizedBox(height:40,)
              
            ],
          ),
        ),
        appBar: AppBar(
          actions: [ProductsAndPrice()],
          backgroundColor: Color.fromARGB(255, 168, 193, 248),
          title: Text("Shop"),
        ));
  }
}
