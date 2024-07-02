// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ahmadapi/model/item.dart';
import 'package:ahmadapi/provider/cart.dart';
import 'package:ahmadapi/shared/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ahmadapi/language.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  Item product;
  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // const Details({Key? key}) : super(key: key);
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);

    return Scaffold(
        appBar: AppBar(
          actions: [ProductsAndPrice()],
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor:  Color.fromARGB(255, 65, 131, 189),
          title: Text(ddetails() , style: TextStyle( fontFamily: "cairo" ,  color: Colors.white),),
        ),
    
        body: SingleChildScrollView(
          
          child: Column(
            children: [
                SizedBox(
                height: 22,
              ),
              Image.asset(widget.product.imgPath ,width: 330,),
              SizedBox(
                height: 22  ,
              ),
              Text(
                "\$  ${widget.product.price}" ,
                style: TextStyle(fontSize: 20 , fontFamily: "cairo" ,  fontWeight: FontWeight.bold , color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "New" ,
                        style: TextStyle(fontSize: 15 , color: Color.fromARGB(255, 255, 247, 247) ,  fontFamily: "cairo"),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 158, 157, 103),
                        borderRadius: BorderRadius.circular(4),
                      )),
                
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 66,
                  ),
                  Row(
                    children: [
                  
                      Image.asset(widget.product.imgPath1, width: 30,),
                      SizedBox(width: 9,),
                      Image.asset(widget.product.imgPath2, width: 30,),
                      SizedBox(width: 9,),
                      Image.asset(widget.product.imgPath3, width: 30,),


                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      ddetails(),
                      style: TextStyle(fontSize: 22 ,  fontFamily: "cairo", fontWeight: FontWeight.bold ),
                      textAlign: TextAlign.start,
                      
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Card(
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: InkWell(
                        onTap: (){carttt.add(widget.product);},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 6),
                          child: Row(
                            children: [
                              Icon(Icons.add),
                                
                              Text(add() , style: TextStyle(fontFamily: "cairo"),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  widget.product.deta,
                  style: TextStyle(
                    fontFamily: "cairo", 
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: isShowMore ? 4 : null,
                  overflow: TextOverflow.fade,
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isShowMore = !isShowMore;
                    });
                  },
                  child: Text(
                    isShowMore ? "Show more" : "Show less",
                    style: TextStyle(
                      fontFamily: "cairo", 
                      fontSize: 16,
                    ),
                  ))
            ],
          ),
        ));
  }
}
