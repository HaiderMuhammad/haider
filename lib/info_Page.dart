
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:untitled6/templates_page.dart';


// ignore: camel_case_types
class user_Info extends StatefulWidget {
  const user_Info({Key? key}) : super(key: key);

  @override
  State<user_Info> createState() => _user_InfoState();
}

// ignore: camel_case_types
class _user_InfoState extends State<user_Info> {
  String initialCountry = 'IQ';
  PhoneNumber number = PhoneNumber(isoCode: 'IQ');

  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if( image == null ) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }


  int selected = 0;
  Widget customRadio(String text, int index) {

    return MaterialButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
            color: (selected == index) ? Colors.white : Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: (selected == index) ? Colors.blueAccent : Colors.grey,
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
    );
  }

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              _image !=null
              ? ClipOval(
                child: Container(
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 4,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueAccent,
                              border: Border.all(width: 4,color: Colors.white)
                          ),
                          child: const Icon(Icons.add_a_photo,color: Colors.white,size: 20,),
                        ),
                      ),
                      Image.file(_image!,
                        width: MediaQuery.of(context).size.width/3.5,
                        height: MediaQuery.of(context).size.height/7,
                        fit: BoxFit.cover,),
                    ],
                  ),
                )
              )
              : Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3.5,
                      height: MediaQuery.of(context).size.height/7.3,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/cv3.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 4,
                      child: GestureDetector(
                        onTap: ()=> getImage(ImageSource.camera),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueAccent,
                              border: Border.all(width: 4,color: Colors.white)
                          ),
                          child: const Icon(Icons.add_a_photo,color: Colors.white,size: 20,),
                        ),
                      ),
                    )
                  ],
                ),

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RadioButton("M", 1),
                    RadioButton("F", 2),
                  ],
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromRGBO(196,135,198,.2),
                          blurRadius: 10,
                          offset: Offset(0,.1),
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(
                                color: Colors.grey.shade300
                            ))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Full Name",
                              hintStyle: GoogleFonts.robotoSlab(color: Colors.grey)
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: GoogleFonts.robotoSlab(color: Colors.grey)
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(
                                color: Colors.grey.shade300
                            ))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Location",
                              hintStyle: GoogleFonts.robotoSlab(color: Colors.grey)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5),
                margin: const EdgeInsets.only(left: 30,right: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      const BoxShadow(
                        color: Color(0xffeeeeee),
                        blurRadius: 10,
                        offset: Offset(0,4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13))
                ),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {},
                  inputBorder: InputBorder.none,
                  hintText: "Phone Number",
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromRGBO(196,135,198,.2),
                          blurRadius: 10,
                          offset: Offset(0,.1),
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(
                                color: Colors.grey.shade300
                            ))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Profession",
                            hintStyle: GoogleFonts.robotoSlab(color: Colors.grey),
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Profile",
                              hintStyle: GoogleFonts.robotoSlab(color: Colors.grey)
                          ),
                          maxLines: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromRGBO(196,135,198,.2),
                          blurRadius: 10,
                          offset: Offset(0,.1),
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                            ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Skills",
                            hintStyle: GoogleFonts.robotoSlab(color: Colors.grey),
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Experience",
                              hintStyle: GoogleFonts.robotoSlab(color: Colors.grey)
                          ),
                          maxLines: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context) => const Templates_Pages(
                        )
                        )
                    );
                  },
                  height: MediaQuery.of(context).size.height/15,
                  minWidth: double.infinity,
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("Next",
                    style: GoogleFonts.robotoSlab(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25

                    ),
                  ),

                ),
              ),
            ],
          ),
        )
      )
    );
  }


  Widget RadioButton(String text, int index) {

    return MaterialButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
            color: (selected == index) ? Colors.white : Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: (selected == index) ? Colors.blueAccent : Colors.grey,
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
    );
  }
}
