import 'package:ahmadapi/language.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:url_launcher/url_launcher.dart';

class aboutme extends StatefulWidget {
  const aboutme({super.key});

  @override
  State<aboutme> createState() => _aboutmeState();
}

class _aboutmeState extends State<aboutme> {
  List listas = [
    "images/any/ahmadnew.jpg",
    "images/any/ahmadnew1.jpg",
    "images/ahmad/ahmad.jpg",
    "images/ahmad/ahmad1.jpg",
    "images/ahmad/ahmad7.jpg",
    "images/ahmad/ahmad2.jpg",
    "images/ahmad/ahmad3.jpg",
    "images/ahmad/ahmad4.jpg",
    "images/ahmad/ahmad5.jpg",
    "images/ahmad/ahmad9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 219, 218),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 247, 219, 218),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ahmad Nedal",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 44, fontFamily: "cont"),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 250,
                  child: ScrollSnapList(
                      itemBuilder: _BuildListItem,
                      itemCount: listas.length,
                      itemSize: 160,
                      dynamicItemSize: true,
                      onItemFocus: (index) {}),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  abouttme(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "cairo",
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Color.fromARGB(255, 234, 231, 225),
                    elevation: 30,
                    child: Padding(
                      padding: EdgeInsets.all(29),
                      child: Text(
                        aboutdetails(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, fontFamily: "cairo"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                coonect(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontFamily: "cairo"),
                ),
                  SizedBox(
                      height: 10,
                    ),
                  

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          const links =
                              "https://www.linkedin.com/in/ahmad-nedal-23b50824b/";
                          launchUrl(Uri.parse(links),
                              mode: LaunchMode.inAppWebView);
                        },
                        child: Container(
                          width: 33,
                          child: Image.asset(
                            "images/social/linkedin.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      width: 9,
                    ),
                    InkWell(
                        onTap: () {
                          const links =
                              "https://wa.me/+962781399265";
                          launchUrl(Uri.parse(links),
                              mode: LaunchMode.inAppWebView);
                        },
                        child: Container(
                          width: 33,
                          child: Image.asset(
                            "images/social/whatsapp.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      width: 9,
                    ),
                    InkWell(
                        onTap: () {
                          const links =
                              "https://www.instagram.com/ahmad_neddalll?igsh=MzRtNGxjbGNvYnBr";
                          launchUrl(Uri.parse(links),
                              mode: LaunchMode.inAppWebView);
                        },
                        child: Container(
                          width: 37,
                          child: Image.asset(
                            "images/social/instagram.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      width: 9,
                    ),
                    InkWell(
                        onTap: () {
                          const links =
                              "https://www.facebook.com/AhmadNedalll?mibextid=ZbWKwL";
                          launchUrl(Uri.parse(links),
                              mode: LaunchMode.inAppWebView);
                        },
                        child: Container(
                          width: 33,
                          child: Image.asset(
                            "images/social/facebook.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                    
                  ],
                ),
                  SizedBox(
                      height: 50,
                    ),
              ],
            ),
          ),
        ));
  }

  Widget _BuildListItem(BuildContext contex, int index) {
    return SizedBox(
      width: 200,
      height: 300,
      child: Card(
        elevation: 22,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: Column(
            children: [
              Image.asset(
                listas[index],
                fit: BoxFit.cover,
                width: 190,
                height: 242,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
