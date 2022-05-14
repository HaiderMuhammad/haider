// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';


import 'cvPage1.dart';
import 'cvPage2.dart';
import 'cvPage3.dart';


class Templates_Pages extends StatefulWidget {
  const Templates_Pages({Key? key}) : super(key: key);

  @override
  _Templates_PagesState createState() => _Templates_PagesState();
}

class _Templates_PagesState extends State<Templates_Pages> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Templates",
          style: GoogleFonts.outfit(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) => const page1()
                          )
                      );
                    },
                    child: Container(
                        margin:  EdgeInsets.only(right: 30,left: 20),
                        width: MediaQuery.of(context).size.width*0.7,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    width: MediaQuery.of(context).size.width*0.65,
                                    height: MediaQuery.of(context).size.height/2.7,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                            image: AssetImage("assets/images/cv4.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              left: MediaQuery.of(context).size.width/3.5,
                              child:  Text("JOB",
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) => const Page2()
                          )
                      );
                    },
                    child: Container(
                        margin: const EdgeInsets.only(right: 30,left: 20),
                        width: MediaQuery.of(context).size.width*0.7,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    width: MediaQuery.of(context).size.width*0.65,
                                    height: MediaQuery.of(context).size.height/2.7,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                            image: AssetImage("assets/images/cv3.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              left: MediaQuery.of(context).size.width/6,
                              child:  Text("Freelance",
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) => const Page3()
                          )
                      );
                    },
                    child: Container(
                        margin: const EdgeInsets.only(right: 30,left: 20),
                        width: MediaQuery.of(context).size.width*0.7,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    width: MediaQuery.of(context).size.width*0.65,
                                    height: MediaQuery.of(context).size.height/2.7,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                            image: AssetImage("assets/images/cv5.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              left: MediaQuery.of(context).size.width/5,
                              child:  Text("Collage",
                                style: GoogleFonts.outfit(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                )
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100,),
            SizedBox(height: 30,),


            SizedBox(height: 100,),

          ],
        )
      ),
    );
  }
}