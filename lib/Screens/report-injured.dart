import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:straycare/widgets/sizedbox.dart';
import 'package:straycare/widgets/textfield.dart';
import 'package:http/http.dart' as http;
import '../Connection/connection.dart';

class ReportInjuredPage extends StatefulWidget {
  const ReportInjuredPage({Key? key}) : super(key: key);

  @override
  State<ReportInjuredPage> createState() => _ReportInjuredPageState();
}

class _ReportInjuredPageState extends State<ReportInjuredPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  File? _image;
  final picker = ImagePicker();
  var descriptionctr = TextEditingController();
  var locctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
                  child: textfield('Add a Description.....', Colors.black,
                      20.sp, Colors.black, 20.w, 30.h, 0.0, Colors.transparent,descriptionctr),
                ),

                //Location
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                  ),
                  child: textfield(
                      'Location',
                      Colors.black,
                      20.sp,
                      Colors.transparent,
                      30.w,
                      15.h,
                      5.0.r,
                      const Color(0xFFD9D9D9),locctr),
                ),

                sbh30,
                //submit button
                SizedBox(
                  height: 66.h,
                  width: 263.w,
                  child: OutlinedButton(
                    onPressed: () {

                      if(_image != null && descriptionctr.text.isNotEmpty && locctr.text.isNotEmpty ) {
                        upload(_image);
                      }
                      else ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('All fields required !!!....')));
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
  }

  Future chooseImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    _image = File(pickedImage!.path);
  }

  Future upload(File? imageFile) async {
    var uri = Uri.parse('${Con.url}report.php');
    var request = http.MultipartRequest("POST", uri);

    var pic = await http.MultipartFile.fromPath("image", imageFile!.path);
    request.files.add(pic);
  }
}
