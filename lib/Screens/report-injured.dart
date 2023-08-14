import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:straycare/CurrentLocation/currentLoation.dart';
import 'package:straycare/widgets/sizedbox.dart';
import 'package:straycare/widgets/textfield.dart';
import 'package:http/http.dart' as http;
import '../Connection/connection.dart';
import '../SharedPreferences/sharedgetdata.dart';

class ReportInjuredPage extends StatefulWidget {
   ReportInjuredPage({Key? key, required this.casetype}) : super(key: key);
var casetype;
  @override
  State<ReportInjuredPage> createState() => _ReportInjuredPageState();
}

class _ReportInjuredPageState extends State<ReportInjuredPage> {

  var log;
  var myLatitude;
  var myLongitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("casetype:${widget.casetype}");
  }

  File? _image;
  final picker = ImagePicker();
  var descriptionctr = TextEditingController();
  //var locctr = TextEditingController();
  String myLoc = "---Tap the button below to get your location ---";
  String? mapLocation;

  void credentials() async{
    Map<String, String> credentials = await getCredentials();
    log = credentials["logid"]!;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationController>(
      init: LocationController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 112.h,
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
          body: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Color(0xFFFFCE56),
            child: Padding(
              padding: EdgeInsets.only(bottom: 53.h),
              child: Container(
                height: 622.h,
                width: 360.w,
                color: Color(0xFFFFFFFF),
                child: SingleChildScrollView(
                  child: Column(children: [
                    sbh30,
                    //profile pic
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
                                upload(_image);
                              },
                              child: Card(
                                elevation: 5,
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  child: Center(
                                    child: Text(
                                        "--Click here to select image--"),
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
                    //description section
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
                      child: textfield(
                          'Add a Description.....',
                          Colors.black,
                          20.sp,
                          Colors.black,
                          20.w,
                          30.h,
                          0.0,
                          Colors.transparent,
                          descriptionctr),
                    ),

                    //Location
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.w,
                      ),
                      child: Text('$myLoc', textAlign: TextAlign.center,
                        style: TextStyle(
                            color: myLoc ==
                                "---Tap the button below to get your location ---"
                                ? Colors.red
                                : Colors.black),
                      ),),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 30.w,
                        vertical: 30.w),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color(0xFFFFCE56),
                                )
                            )
                        ),
                        onPressed: () {
                          setState(() {
                            controller.getCurrentLocation();
                            mapLocation = controller.currentLocation == null ? myLoc : controller.currentLocation;
                            myLoc = mapLocation!;
                            myLatitude = controller.myLat;
                            myLongitude = controller.myLong;
                            print(myLatitude);
                            print(myLongitude);
                          });
                        },
                        child: Center(
                          child: ListTile(
                            title: Text(
                              "Get My Location",
                            ),
                            leading: Icon(Icons.location_on_outlined),
                          ),
                        ),
                      ),),
                    // textfield(
                    //     'Location',
                    //     Colors.black,
                    //     20.sp,
                    //     Colors.transparent,
                    //     30.w,
                    //     15.h,
                    //     5.0.r,
                    //     const Color(0xFFD9D9D9),locctr),


                    sbh30,
                    //submit button
                    SizedBox(
                      height: 66.h,
                      width: 263.w,
                      child: OutlinedButton(
                        onPressed: () {
                          if (_image != null) {
                            upload(_image);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
                              "Posting......",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                              ),
                            ),
                            backgroundColor: Color(0xfa8f7805),
                            ));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
                              "Posted Succesfully....",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                            )),
                            backgroundColor: Color(0xfa8f7805),
                            ));
                            Navigator.pop(context);
                          }
                          else
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('All fields required !!!....',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white)),
                          backgroundColor: Color(0xfa8f7805) ,
                            ));
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xFF20614A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.r),
                            )),
                        child: Text(
                          'submit',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future chooseImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedImage!.path);
    });

  }



  Future upload(File? imageFile) async {
    var uri = Uri.parse('${Con.url}report.php');
    var request = http.MultipartRequest("POST", uri);
    print(log);

    request.fields['user_id'] = "5";
    request.fields['location'] = myLoc;
    request.fields['lati'] = myLatitude.toString();
    request.fields['longi'] = myLongitude.toString();
    request.fields['reported_date'] = DateTime.now().toString();
    request.fields['case_type'] = widget.casetype;
    request.fields['description'] = descriptionctr.text;


    var pic = await http.MultipartFile.fromPath("image", imageFile!.path);
    request.files.add(pic);

    var response = await request.send();

    print(response.statusCode);
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Submitted....')));
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Failed to insert !!....')));
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ReportInjuredPage(casetype: widget.casetype,)));
    }
  }
}
