import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:share/share.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(Iconsax.share5,size: 30, color: Colors.white,),
              onPressed: () {
                Share.share("https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
              },
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Row(
          children: [


            // Black Container

            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2.5,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30,right: 10,bottom: 30),
                        width: MediaQuery.of(context).size.width/4,
                        height: MediaQuery.of(context).size.height/8.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/person.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Text("Haider Muhammad",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white
                          )
                      ),
                      Text("Programmer",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.white
                          )
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30,bottom: 20),
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/25,
                        decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                            )
                        ),
                        child: Center(
                          child: Text("Programmer",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text("haiderpc49",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Icon(Icons.email, color: Colors.white, size: 15,),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text("07813699090",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Icon(Icons.phone, color: Colors.white, size: 15,),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text("Iraq, Baghdad",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Icon(Iconsax.location5, color: Colors.white, size: 15,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30,bottom: 20),
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/25,
                        decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                            )
                        ),
                        child: Center(
                          child: Text("SKILLS",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white
                              )
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 15,right: 10),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                              ),
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
                              Container(
                                margin: const EdgeInsets.only(left: 15,right: 10),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                              ),
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
                              Container(
                                margin: const EdgeInsets.only(left: 15,right: 10),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                              ),
                              Text("Mobile developer",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30,bottom: 30),
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/25,
                        decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                            )
                        ),
                        child: Center(
                          child: Text("EDUCATION",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white
                              )
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 15,right: 10),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                              ),
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
                              Container(
                                margin: const EdgeInsets.only(left: 15,right: 10),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                              ),
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
                        ],
                      ),
                    ],
                  ),
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
      ),
    );
  }
}