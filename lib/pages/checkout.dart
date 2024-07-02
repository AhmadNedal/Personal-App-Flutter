// ignore_for_file: prefer_const_constructors

import 'package:ahmadapi/language.dart';
import 'package:ahmadapi/pages/details_screen.dart';
import 'package:ahmadapi/provider/cart.dart';
import 'package:ahmadapi/shared/appbar.dart';
import 'package:ahmadapi/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text(prselectedservices() , style: TextStyle(fontFamily: "cairo",fontSize: 19 , color: Colors.white),),
        actions: [ProductsAndPrice()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 550,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: carttt.selectedProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Details(product: carttt.show(index)),
                          ),
                        );
                        },
                        child: Card(
                          child: ListTile(
                            title: Text(carttt.selectedProducts[index].name),
                            subtitle: Text(
                                "${carttt.selectedProducts[index].price} - ${carttt.selectedProducts[index].location}"),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                  carttt.selectedProducts[index].imgPath),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  carttt.delete(carttt.selectedProducts[index]);
                                },
                                icon: Icon(Icons.remove)),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 30,),
        !(carttt.isempty())?
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNgreen),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "Pay \$${carttt.price}",
                style: TextStyle(fontFamily: "cairo",fontSize: 19 , color: Colors.white),
              ),
            )
            : Text(carten1(),  style: TextStyle(fontFamily: "cairo",fontSize: 19)),
            
          ],
        ),
      ),
    );
  }
}
