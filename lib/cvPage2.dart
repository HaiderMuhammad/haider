import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:share/share.dart';

import 'helper/model.dart';
import 'helper/sqldb.dart';

class Page2 extends StatefulWidget {
   Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late DatabaseHelper helper;
  @override
  void initState() {
    super.initState();
    // images = [];
    helper = DatabaseHelper();
  }

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

      body:
      FutureBuilder(
        future: helper.readData(),
        builder: (context, AsyncSnapshot snapshot) {



          if (snapshot.hasData) {
            return ListView.builder(
              itemCount:1 ,
              itemBuilder: (context,index){
                Model info = Model.fromMap(snapshot.data[snapshot.data.length-1]);

                return  SingleChildScrollView(
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
                                // Container(
                                //   margin: const EdgeInsets.only(top: 30,right: 10,bottom: 30),
                                //   width: MediaQuery.of(context).size.width/4,
                                //   height: MediaQuery.of(context).size.height/8.3,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(100),
                                //       image: const DecorationImage(
                                //           image: AssetImage("assets/images/person.jpg"),
                                //           fit: BoxFit.cover
                                //       )
                                //   ),
                                // ),
                                const SizedBox(height: 15 ,),
                                Text("${info.fullName}",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white
                                    )
                                ),
                                Text("${info.profession}",
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
                                    child: Text("Contacts",
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
                                        children:  [
                                          Text("${info.email}",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white
                                            ),
                                          ),
                                          const SizedBox(width: 10,),
                                          const Icon(Icons.email, color: Colors.white, size: 15,),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children:  [
                                          Text("${info.phoneNumber}",
                                            // ignore: prefer_const_constructors
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white
                                            ),
                                          ),
                                          const SizedBox(width: 10,),
                                          const Icon(Icons.phone, color: Colors.white, size: 15,),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children:  [
                                          Text("${info.address}",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white
                                            ),
                                          ),
                                          const SizedBox(width: 10,),
                                          const Icon(Iconsax.location5, color: Colors.white, size: 15,),
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
                                    // Row(
                                    //   children: [
                                    //     Container(
                                    //       margin: const EdgeInsets.only(left: 15,right: 10),
                                    //       width: 10,
                                    //       height: 10,
                                    //       decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.circular(5),
                                    //         color: Colors.white,
                                    //       ),
                                    //     ),
                                    //     Text("Problem solving skill",
                                    //         style: GoogleFonts.roboto(
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize: 12,
                                    //             color: Colors.white
                                    //         )
                                    //     ),
                                    //   ],
                                    // ),
                                    // const SizedBox(height: 12,),
                                    // Row(
                                    //   children: [
                                    //     Container(
                                    //       margin: const EdgeInsets.only(left: 15,right: 10),
                                    //       width: 10,
                                    //       height: 10,
                                    //       decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.circular(5),
                                    //         color: Colors.white,
                                    //       ),
                                    //     ),
                                    //     Text("UI/UX",
                                    //         style: GoogleFonts.roboto(
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize: 12,
                                    //             color: Colors.white
                                    //         )
                                    //     ),
                                    //   ],
                                    // ),
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
                                        Text("${info.skills}",
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
                                        Text("${info.profile}",
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
                                  Text("${info.profile}",
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
                                      Text("${info.experience}",
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
                );
              },
            );
          }
          else{
            return const Center(child: CircularProgressIndicator());

          }
        },
      ),


    );
  }
}