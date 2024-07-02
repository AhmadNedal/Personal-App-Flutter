import 'package:ahmadapi/language.dart';

class Item {
  String imgPath;
  String imgPath1;
  String imgPath2;
  String imgPath3;
  double price;
  String location;
  String name;
  String lang;
  String deta;
  Item({required this.imgPath,  required this.name, required this.price, this.location = "The Castel" , this.lang ="Flutter", this.imgPath1 ="images/any/application.png", this.imgPath2 ="images/any/application.png", this.imgPath3="images/any/application.png",this.deta="Details",});
}



final List<Item> itemsDescktop = [
  // Item(name: "Descktop App", price: 14.99, imgPath: "images/any/pc.png" , lang :"Java | DataBase",imgPath1:"images/any/java.png",imgPath2:"images/any/javaffx.png",imgPath3:"images/any/database.png" ,deta: "Design an Android application using Dart and Flutter. The application will be fully integrated with an online database, \"Firebase\" The delivery will be in the form of an IPA file to be uploaded to the Apple Store. There is an additional service, at a different price, for uploading your application to the Apple Store. The prices above are per page. You can check all our offers."),
];

final List<Item> itemsios= [
  Item(name: "Ios App with one page", price: 14.99, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/ipa.png" ,deta:"${androidflutter()}"),
  Item(name: "Ios App with three page", price: 39.99, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/ipa.png" ,deta:"${androidflutterupper()}"),
];
final List<Item> itemsandroid = [
  Item(name: "Android App with one page", price: 24.99, imgPath: "images/any/application.png", lang :"Java | Xml"  ,imgPath1:"images/any/java.png",imgPath2:"images/any/xml.png",imgPath3:"images/any/apk.png" ,deta: "${androiddis()}"),
  Item(name: "Android App with three page", price: 64.99, imgPath: "images/any/application.png",lang :"Java | Xml",imgPath1:"images/any/java.png",imgPath2:"images/any/xml.png",imgPath3:"images/any/apk.png",deta: "${androiddisupper()}"),
  Item(name: "Android App with one page", price: 14.99, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/apk.png" ,deta: "${androidflutter()}"),
  Item(name: "Android App with three page", price: 39.99, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/apk.png" ,deta:"${androidflutterupper()}"),
];

 final List<Item> itemall = [
  Item(name: "Android App with one page", price: 24.99, imgPath: "images/any/application.png", lang :"Java | Xml"  ,imgPath1:"images/any/java.png",imgPath2:"images/any/xml.png",imgPath3:"images/any/apk.png" ,deta: "${androiddis()}" ),
  Item(name: "Android App with three page", price: 64.99, imgPath: "images/any/application.png",lang :"Java | Xml",imgPath1:"images/any/java.png",imgPath2:"images/any/xml.png",imgPath3:"images/any/apk.png",deta:"${androiddisupper()}"  ),
  Item(name: "Android App with one page", price: 14.99, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/apk.png" ,deta: "${androidflutter()}"),
  Item(name: "Android App with three page", price: 39.99, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/apk.png" ,deta:"${androidflutterupper()}"),  
  Item(name: "Ios App with one page", price: 14.99, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/ipa.png" ,deta:"${androidflutter()}"),
  Item(name: "Ios App with three page", price: 39.99, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/ipa.png" ,deta:"${androidflutterupper()}"),


];














final List<Item> items = [
  Item(name: "product1", price: 12.99, imgPath: "images/product/1.png",),
  Item(name: "product2", price: 6.99, imgPath: "images/product/2.png"),
  Item(name: "product3", price: 79.99, imgPath: "images/product/3.png"),
  Item(name: "product4", price: 12.99, imgPath: "images/product/4.png"),
  Item(name: "product5", price: 33.99, imgPath: "images/product/5.png"),
  Item(name: "product6", price: 4.99, imgPath: "images/product/6.png"),
  Item(name: "product7", price: 12.99, imgPath: "images/product/7.png"),
  Item(name: "product8", price: 5.99, imgPath: "images/product/8.png"),
  Item(name: "product8", price: 5.99, imgPath: "images/product/9.png"),
  Item(name: "product8", price: 5.99, imgPath: "images/product/10.png"),
  Item(name: "product8", price: 5.99, imgPath: "images/product/11.png"),
  Item(name: "product8", price: 5.99, imgPath: "images/product/12.png"),
  Item(name: "product8", price: 5.99, imgPath: "images/product/13.png"),
  Item(name: "product8", price: 5.99, imgPath: "images/product/14.png"),
  Item(name: "product8", price: 5.99, imgPath: "images/product/15.png"),



];
