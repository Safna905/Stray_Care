
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:straycare/widgets/textbutton.dart';
import 'package:straycare/widgets/textfield.dart';

import '../Connection/connection.dart';
import '../SharedPreferences/sharedgetdata.dart';
import '../widgets/sizedbox.dart';

class ReportPetMissingPage extends StatefulWidget {
   ReportPetMissingPage(String type, {Key? key}) : super(key: key){
    this.type = type;
  }

  var type;

  @override
  State<ReportPetMissingPage> createState() => _ReportPetMissingPageState();
}

class _ReportPetMissingPageState extends State<ReportPetMissingPage> {
  var namectr = TextEditingController();
  var colorctr = TextEditingController();
  var breedctr = TextEditingController();
  var misDatectr = TextEditingController();
  var locationctr = TextEditingController();
  var mobctr = TextEditingController();
  var genderctr = TextEditingController();
  var animalTypectr = TextEditingController();
  var descriptionctr = TextEditingController();

  var log;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void credentials() async{
    Map<String, String> credentials = await getCredentials();
    log = credentials["logid"]!;
  }

  File? _image;
  final picker = ImagePicker();

  Future<DateTime?> pickdate() async {
    DateTime? pickedDate;
    pickedDate = await showDatePicker(
      context: (context),
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      misDatectr.text = formattedDate;
    }
  }

  Future chooseImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedImage!.path);
    });
  }

  Future upload(File imageFile) async {

    print(widget.type);
    print(log);
    print(breedctr.text);
    print(namectr.text);
    print(genderctr.text);
    print(descriptionctr.text);
    print(colorctr.text);
    print(misDatectr.text);
    print(mobctr.text);
    print(locationctr.text);

    var uri = Uri.parse('${Con.url}missing.php');
    var request = http.MultipartRequest("POST", uri);

    request.fields['user_id'] = log;
    request.fields['animal_type'] = widget.type;
    request.fields['breed'] = breedctr.text;
    request.fields['name'] = namectr.text;
    request.fields['gender'] = genderctr.text;
    request.fields['description'] = descriptionctr.text;
    request.fields['color'] = colorctr.text;
    request.fields['missingDate'] = misDatectr.text;
    request.fields['report_date'] = DateTime.now().toString();
    request.fields['mob_no'] = mobctr.text;
    request.fields['location'] = locationctr.text;

    var pic = await http.MultipartFile.fromPath('image', imageFile.path);
    request.files.add(pic);
    var response = await request.send();
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Submitted....')));
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Failed to insert !!....')));
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ReportPetMissingPage(widget.type)));
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 122.h,
        title: const Text('REPORT PET MISSING'),
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
              //profile pic
              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.red,
                //child: Image.asset('assets/images/Ellipse 7.png'),
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
                                  child: Center(
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
              getTextField("Pet's name:", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, namectr),
              sbh10,

              getTextField("Gender:", Colors.black, 15.sp, Colors.black, 20.0.w,
                  10.0.h, 50.r, genderctr),
              sbh10,

              getTextField("Color:", Colors.black, 15.sp, Colors.black, 20.0.w,
                  10.0.h, 50.r, colorctr),
              sbh10,

              getTextField("Breed:", Colors.black, 15.sp, Colors.black, 20.0.w,
                  10.0.h, 50.r, breedctr),
              sbh10,

              // getTextField("Animal type:", Colors.black, 15.sp, Colors.black,
              //     20.0.w, 10.0.h, 50.r, animalTypectr),
              // sbh10,

              getTextField("Description:", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, descriptionctr),
              sbh10,

              getTextField("Missing Date :", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, misDatectr, pickdate),
              sbh10,

              getTextField("Location:", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, locationctr),
              sbh10,

              getTextField("Your Mobile Number :", Colors.black, 15.sp,
                  Colors.black, 20.0.w, 10.0.h, 50.r, mobctr),
              sbh30,

              textbutton(263.w, 66.h, const Color(0xFF20614A), 50.r, 'submit',
                  20.sp, FontWeight.w600, () {
                print('**********************INSIDE BUTTON PRESS START******************************');
                print(widget.type);
                // print(log);
                print(breedctr.text);
                print(namectr.text);
                print(genderctr.text);
                print(descriptionctr.text);
                print(colorctr.text);
                print(misDatectr.text);
                print(mobctr.text);
                print(locationctr.text);
                print('**********************INSIDE BUTTON PRESS END******************************');
                if (namectr.text.isNotEmpty &&
                    genderctr.text.isNotEmpty &&
                    colorctr.text.isNotEmpty &&
                    breedctr.text.isNotEmpty &&
                    descriptionctr.text.isNotEmpty &&
                    misDatectr.text.isNotEmpty &&
                    locationctr.text.isNotEmpty &&
                    mobctr.text.isNotEmpty &&
                    _image != null) {
                  setState(() {
                    print('ready');
                    upload(_image!);
                    print("ready to go");
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('All fields required !!!....')));
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
