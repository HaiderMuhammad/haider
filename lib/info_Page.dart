// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:untitled6/helper/sqldb.dart';
import 'package:untitled6/templates_page.dart';

import 'helper/model.dart';
import 'helper/utility.dart';

// ignore: camel_case_types
class user_Info extends StatefulWidget {
  const user_Info({Key? key}) : super(key: key);

  @override
  State<user_Info> createState() => _user_InfoState();
}

// ignore: camel_case_types
class _user_InfoState extends State<user_Info> {
  late DatabaseHelper dbHelper;

  Future<File>? imageFile;
  Image? image;
  late List<Model> images;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    // images = [];
    dbHelper = DatabaseHelper();
    refreshImages();
  }

  refreshImages() {
    // dbHelper.getPhotos().then((imgs) {
    //   setState(() {
    //     images.clear();
    //     images.addAll(imgs);
    //   });
    // });
  }

  String initialCountry = 'IQ';

  // PhoneNumber number = PhoneNumber(isoCode: 'IRQ');
   XFile? _image;
  String? base64Image;
  late Uint8List _bytesImage;


  Future getImage(ImageSource source) async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    _image = XFile(image.path);

    // List<int> imageBytes = image.readAsString();
    // print(imageBytes);
    // base64Image = base64Encode(imageBytes);
    // print('string is');
    // print(base64Image);
    // print("You selected gallery image : " + image.path);
    //
    // _bytesImage = const Base64Decoder().convert(base64Image!);
    //
    setState(() {
      _image = image ;

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
            fontWeight: FontWeight.w500),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: (selected == index) ? Colors.blueAccent : Colors.grey,
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
    );
  }

  Map<String, dynamic> cvValues = {
    'fullName': 'fullName',
    'email': 'email',
    'phoneNumber': '0',
    'address': 'address',
    'profession': 'profession',
    'experience': 'experience',
    'profile': 'profile',
    'skills': 'skills',
    'gender': 'gender',
    'image': 'img',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(

        children: [

    //       _image != null
    //           ? ClipOval(
    //           child: Stack(
    //             children: [
    //               Positioned(
    //                 bottom: 0,
    //                 right: 4,
    //                 child: Container(
    //                   height: 40,
    //                   width: 40,
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(20),
    //                       color: Colors.blueAccent,
    //                       border: Border.all(width: 4, color: Colors.white)),
    //                   child: const Icon(
    //                     Icons.add_a_photo,
    //                     color: Colors.white,
    //                     size: 20,
    //                   ),
    //                 ),
    //               ),
    //
    //               Image.file(
    //                 _image as File,
    //                 width: MediaQuery.of(context).size.width / 3.5,
    //                 height: MediaQuery.of(context).size.height / 7,
    //                 fit: BoxFit.cover,
    //               ),
    //             ],
    //           ))
    //           :
    //       Stack(
    //         children: [
    //           Container(
    //             child: _image==null? Text('Select Image'):Image.file(_image as File)  ,
    //             width: MediaQuery.of(context).size.width / 3.5,
    //             height: MediaQuery.of(context).size.height / 7.3,
    // decoration: BoxDecoration(
    //                       color: Colors.black,
    //                       borderRadius: BorderRadius.circular(100),
    //                       image: const DecorationImage(
    //                           image: AssetImage("assets/images/cv3.jpg"),
    //                           fit: BoxFit.cover)),
    //                 ),
    //
    //             ]),
    //
    //
    //
    //
    //



          // Positioned(
          //   bottom: 0,
          //   right: 4,
          //   child: GestureDetector(
          //     onTap: () => getImage(ImageSource.camera),
          //     child: Container(
          //       height: 40,
          //       width: 40,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           color: Colors.blueAccent,
          //           border: Border.all(width: 4, color: Colors.white)),
          //       child: const Icon(
          //         Icons.add_a_photo,
          //         color: Colors.white,
          //         size: 20,
          //       ),
          //     ),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RadioButton("Male", 1),
                RadioButton("Female", 2),
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
                      color: Color.fromRGBO(196, 135, 198, .2),
                      blurRadius: 10,
                      offset: Offset(0, .1),
                    )
                  ]),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade300))),
                    child: TextField(
                      onChanged: (value) {
                        cvValues['fullName'] = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Full Name",
                          hintStyle:
                              GoogleFonts.robotoSlab(color: Colors.grey)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(),
                    child: TextField(
                      onChanged: (value) {
                        cvValues['email'] = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle:
                              GoogleFonts.robotoSlab(color: Colors.grey)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey.shade300))),
                    child: TextField(
                      onChanged: (value) {
                        cvValues['address'] = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Address",
                          hintStyle:
                              GoogleFonts.robotoSlab(color: Colors.grey)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey.shade300))),
                    child: TextField(
                      onChanged: (value) {
                        cvValues['phoneNumber'] = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone number",
                          hintStyle:
                              GoogleFonts.robotoSlab(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Container(
          //   padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
          //   margin: const EdgeInsets.only(left: 30, right: 30),
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       boxShadow: [
          //         const BoxShadow(
          //           color: Color(0xffeeeeee),
          //           blurRadius: 10,
          //           offset: Offset(0, 4),
          //         )
          //       ],
          //       borderRadius: BorderRadius.circular(8),
          //       border: Border.all(color: Colors.black.withOpacity(0.13))),
          //   child: InternationalPhoneNumberInput(
          //
          //     onInputChanged: (number) {
          //       cvValues['phoneNumber'] = number.parseNumber();
          //       var test=number.parseNumber();
          //       debugPrint('typeeee ${number.runtimeType.toString()}');
          //       debugPrint('test type ${test.runtimeType}');
          //       debugPrint('parse ${number.parseNumber()}');
          //       debugPrint('value ${number}');
          //     },
          //     inputBorder: InputBorder.none,
          //     hintText: "Phone Number",
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(196, 135, 198, .2),
                      blurRadius: 10,
                      offset: Offset(0, .1),
                    )
                  ]),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade300))),
                    child: TextField(
                      onChanged: (value) {
                        cvValues['profession'] = value;
                      },
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
                    decoration: const BoxDecoration(),
                    child: TextField(
                      onChanged: (value) {
                        cvValues['profile'] = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Profile",
                          hintStyle:
                              GoogleFonts.robotoSlab(color: Colors.grey)),
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
                      color: Color.fromRGBO(196, 135, 198, .2),
                      blurRadius: 10,
                      offset: Offset(0, .1),
                    )
                  ]),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        cvValues['skills'] = value;
                      },
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
                    decoration: const BoxDecoration(),
                    child: TextField(
                      onChanged: (value) {
                        cvValues['experience'] = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Experience",
                          hintStyle:
                              GoogleFonts.robotoSlab(color: Colors.grey)),
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
              onPressed: () async {
                debugPrint('valuesss..............$cvValues');

                Model values = Model(
                  fullName: cvValues['fullName'],
                  gender: cvValues['gender'],
                  email: cvValues['email'],
                  phoneNumber: int.parse(cvValues['phoneNumber']),
                  skills: cvValues['skills'],
                  profile: cvValues['profile'],
                  address: cvValues['address'],
                  profession: cvValues['profession'],
                  experience: cvValues['experience'],
                  image: cvValues['image'],
                );
                int id = await dbHelper.create(values);
                debugPrint('هنا دنشوف شيصيرررر$id');
                debugPrint(
                    'هنا دنشوف شيصير type${cvValues['phoneNumber'].runtimeType}');

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Templates_Pages()));
              },
              height: MediaQuery.of(context).size.height / 15,
              minWidth: double.infinity,
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Next",
                style: GoogleFonts.robotoSlab(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    )));
  }

  // ignore: non_constant_identifier_names
  Widget RadioButton(String text, int index) {
    return MaterialButton(
      onPressed: () {
        setState(() {
          selected = index;
          text == 'F'
              ? cvValues['gender'] = 'Female'
              : cvValues['gender'] = 'Male';
        });
      },
      child: Text(
        text,
        style: TextStyle(
            color: (selected == index) ? Colors.white : Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: (selected == index) ? Colors.blueAccent : Colors.grey,
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
    );
  }
}
//  Container(
//                 padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5),
//                 margin: const EdgeInsets.only(left: 30,right: 30),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       const BoxShadow(
//                         color: Color(0xffeeeeee),
//                         blurRadius: 10,
//                         offset: Offset(0,4),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(color: Colors.black.withOpacity(0.13))
//                 ),
//                 child: InternationalPhoneNumberInput(
//                   onInputChanged: (PhoneNumber number) {},
//                   inputBorder: InputBorder.none,
//                   hintText: "Phone Number",
//                 ),
//               ),

//   _image != null
//               ? ClipOval(
//                   child: Stack(
//                   children: [
//                     Positioned(
//                       bottom: 0,
//                       right: 4,
//                       child: Container(
//                         height: 40,
//                         width: 40,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.blueAccent,
//                             border: Border.all(width: 4, color: Colors.white)),
//                         child: const Icon(
//                           Icons.add_a_photo,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//
//                     Image.file(
//                       _image!,
//                       width: MediaQuery.of(context).size.width / 3.5,
//                       height: MediaQuery.of(context).size.height / 7,
//                       fit: BoxFit.cover,
//                     ),
//                   ],
//                 ))
//               : Stack(
//                   children: [
//                     Container(
//                       // child: image,
//                       width: MediaQuery.of(context).size.width / 3.5,
//                       height: MediaQuery.of(context).size.height / 7.3,
//                       decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(100),
//                           image: const DecorationImage(
//                               image: AssetImage("assets/images/cv3.jpg"),
//                               fit: BoxFit.cover)),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: 4,
//                       child: GestureDetector(
//                         onTap: () => getImage(ImageSource.camera),
//                         child: Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.blueAccent,
//                               border:
//                                   Border.all(width: 4, color: Colors.white)),
//                           child: const Icon(
//                             Icons.add_a_photo,
//                             color: Colors.white,
//                             size: 20,
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
