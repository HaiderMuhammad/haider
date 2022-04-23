import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'Info_Page.dart';

class First_Page extends StatefulWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/images/bg2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.1),
                      ]
                  )
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.1),
                      ]
                  )
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText( text:
                TextSpan(
                    style: GoogleFonts.robotoSlab(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                    children: const [
                      TextSpan(text: "Make CV is"),
                    ]
                ),
                ),
                RichText( text:
                TextSpan(
                    style: GoogleFonts.robotoSlab(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                    children: const [
                      TextSpan(text: "now more easy"),
                    ]
                ),
                ),
                const SizedBox(height: 10,),
                RichText(text:
                TextSpan(
                    style: GoogleFonts.robotoSlab(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade400,
                    ),
                    children: const [
                      TextSpan(text: "Enter your information to make your CV")
                    ]
                )
                ),
                RichText(text:
                TextSpan(
                    style: GoogleFonts.robotoSlab(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade400,
                    ),
                    children: const [
                      TextSpan(text: "and choose a template")
                    ]
                )
                ),

              ],
            ),
          ),

          Positioned(
            top: 700,
            right: 30,
            child: MaterialButton(

              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context) =>  const user_Info(
                    )
                    )
                );
              },
              height: 45,
              padding: const EdgeInsets.only(left: 20,right: 20),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Text("Get Started",
                style: GoogleFonts.robotoSlab(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),

        ]
    );
  }
}