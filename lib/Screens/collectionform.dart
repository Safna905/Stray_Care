import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

import '../Connection/connection.dart';
import '../widgets/sizedbox.dart';
import '../widgets/textbutton.dart';
import '../widgets/textfield.dart';

class CollectionFormPage extends StatefulWidget {
  const CollectionFormPage({Key? key}) : super(key: key);

  @override
  State<CollectionFormPage> createState() => _CollectionFormPageState();
}

class _CollectionFormPageState extends State<CollectionFormPage> {
  TextEditingController genderctr = TextEditingController();
  TextEditingController colorctr = TextEditingController();
  TextEditingController animalTypectr = TextEditingController();
  TextEditingController healthCondctr = TextEditingController();
  TextEditingController locationctr = TextEditingController();

  // Future<DateTime?> pickDate() async {
  //   DateTime? pickedDate;
  //   pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime(2015),
  //       lastDate: DateTime(2030));
  //
  //   if(pickedDate != null) {
  //
  //     String formattedDate = DateFormat("YYYY-MM-dd").format(pickedDate);
  //     colDatectr.text = formattedDate;
  //   }
  // }

  File? _image;
  final picker = ImagePicker();

  Future chooseImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedImage!.path);
    });
  }

  Future upload(File imageFile) async {
     var uri = Uri.parse('${Con.url}collected.php');
     var request = http.MultipartRequest("POST", uri);

     request.fields['animal_type'] = animalTypectr.text;
     request.fields['gender'] = genderctr.text;
     request.fields['color'] = colorctr.text;
     request.fields['collected_on'] = DateTime.now().toString();
     request.fields['collected_from'] = locationctr.text;
     request.fields['health_cond'] = healthCondctr.text;


     var pic = await http.MultipartFile.fromPath('image', imageFile.path);
     request.files.add(pic);
     var response = await request.send();
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Submitted....')));
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Failed to insert !!....')));
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const CollectionFormPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 122.h,
        title: const Text('Collection Form'),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 12.h,
              bottom: 12.h,
              right: 20.h,
            ),
            child: Image.asset(
              'assets/images/Rectangle_28-removebg-preview.png',
              height: 94.h,
              width: 78.w,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Column(
            children: [
              //Image from gallery
              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.red,
                child: _image == null
                    ? Stack(
                        children: [
                          Center(
                            child: InkWell(
                              onTap: () {
                                upload(_image!);
                              },
                              child: Card(
                                elevation: 5,
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  child: const Center(
                                    child: Text('-- Click to select image --'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              right: 80.w,
                              top: 150.w,
                              child: Container(
                                height: 50.w,
                                width: 50.w,
                                color: Colors.blueGrey[100],
                                child: IconButton(
                                  icon: Icon(
                                    Icons.photo_camera_back_outlined,
                                    size: 30.w,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    chooseImage();
                                  },
                                ),
                              ))
                        ],
                      )
                    : Container(
                        height: 200,
                        width: 250,
                        child: Image.file(
                          _image!,
                          fit: BoxFit.cover,
                        )),
              ),
              sbh30,
              getTextField("Gender:", Colors.black, 15.sp, Colors.black, 20.0.w,
                  10.0.h, 50.r, genderctr),
              sbh10,

              getTextField("Color:", Colors.black, 15.sp, Colors.black, 20.0.w,
                  10.0.h, 50.r, colorctr),
              sbh10,

              getTextField("Animal type:", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, animalTypectr),
              sbh10,

              getTextField("Health Condition :", Colors.black, 15.sp,
                  Colors.black, 20.0.w, 10.0.h, 50.r, healthCondctr),
              sbh10,

              getTextField("Location:", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, locationctr),
              sbh10,

              textbutton(263.w, 66.h, const Color(0xFF20614A), 50.r, 'submit',
                  20.sp, FontWeight.w600, () {
                // print(
                //     '**********************INSIDE BUTTON PRESS START******************************');
                //
                // print(genderctr.text);
                // print(colorctr.text);
                // print(misDatectr.text);
                // print(mobctr.text);
                // print(locationctr.text);
                // print(
                //     '**********************INSIDE BUTTON PRESS END******************************');
                if (genderctr.text.isNotEmpty &&
                    colorctr.text.isNotEmpty &&
                    animalTypectr.text.isNotEmpty &&
                    locationctr.text.isNotEmpty &&
                    healthCondctr.text.isNotEmpty &&
                    _image != null) {
                  setState(() {
                    print('ready');
                    upload(_image!);
                    print("ready to go");
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('All fields required !!!....')));
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
