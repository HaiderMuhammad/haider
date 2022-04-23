import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:share/share.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon:  const Icon(Iconsax.share5,size: 30, color: Colors.white,),
              onPressed: () {
                Share.share("https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
              },
            ),
          ),
        ],
      ),
      // ignore: sized_box_for_whitespace
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/7.5,
              decoration: const BoxDecoration(
                color: Colors.blue
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text("Haider Muhammad",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.white
                  )
                  ),

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Row(
                children: [


                  // Black Container

                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Text("CONTACT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: const [
                                  Icon(Icons.phone_android_rounded,
                                    color: Colors.white,
                                    size: 20,),
                                  SizedBox(width: 10,),
                                  Text("07813699090",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: const [
                                  Icon(Icons.email_rounded,
                                    color: Colors.white,
                                    size: 20,),
                                  SizedBox(width: 10,),
                                  Text("haiderpc49",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: const [
                                  Icon(Icons.location_pin,
                                    color: Colors.white,
                                    size: 20,),
                                  SizedBox(width: 10,),
                                  Text("Baghdad, Iraq",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 40,),

                              const Text("SKILLS",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),

                              const SizedBox(height: 20,),

                              Row(
                                children: [
                                  Text("Problem solving skill",
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white
                                      )
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12,),
                              Row(
                                children: [
                                  Text("UI/UX",
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white
                                      )
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12,),
                              Row(
                                children: [
                                  Text("Mobile developer",
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white
                                      )
                                  ),
                                ],
                              ),

                              const SizedBox(height: 40,),

                              const Text("LANGUAGES",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Text("Arabia",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white
                                  )
                              ),
                              const SizedBox(height: 12,),
                              Text("English",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white
                                  )
                              ),
                              const SizedBox(height: 12,),
                              Text("German",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white
                                  )
                              ),
                              const SizedBox(height: 12,),


                            ],
                          ),
                        )
                      ),
                    ],
                  ),


                  // White Container

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/1.7,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 10,top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Profile",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const Divider(thickness: 1,
                                color: Colors.black,
                              ),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing"
                                  " elit. Fusce ornare justo lacus, at pulvinar purus"
                                  " egestas et. Cras lacus mi, accumsan vitae"
                                  " magna sit amet, interdum imperdiet dui."
                                  " Etiam lobortis",
                                style: GoogleFonts.actor(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Experience",
                                    style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const Divider(thickness: 1,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(height: 10,),
                                    ],
                                  ),
                                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing"
                                      " elit. Fusce ornare justo lacus, at pulvinar purus"
                                      " egestas et. Cras lacus mi, accumsan vitae"
                                      " magna sit amet, interdum imperdiet dui."
                                      " Etiam lobortis",
                                    style: GoogleFonts.actor(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            )
          ],
        )
      )
    );
  }
}