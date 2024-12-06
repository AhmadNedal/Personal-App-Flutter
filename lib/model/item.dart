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


final List<Item> itemindex= [
  Item(name: "Flutter App", price: 1, imgPath: "images/any/flutternew.png" , lang :"Flutter | Dart",imgPath1:"images/any/dart.png",imgPath2:"images/any/flutternew.png",imgPath3:"images/any/firebase.png" ,deta:"${flutterdetails()}"),
  Item(name: "Website", price: 2, imgPath: "images/any/htmlcss.png" , lang :"Html || css || JavaScript",imgPath1:"images/any/html.png",imgPath2:"images/any/css-3.png",imgPath3:"images/any/java-script.png" ,deta:"${wepdetails()}"),
  Item(name: "C++ || Problem Solving", price: 3, imgPath: "images/any/c++.jpg" , lang :"Flutter | Dart",imgPath1:"images/any/c++.jpg",imgPath2:"images/any/codeforces.jfif",imgPath3: "images/any/c++.jpg",deta:"${javadetails()}"),
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

