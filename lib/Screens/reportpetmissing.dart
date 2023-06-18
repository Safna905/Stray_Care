import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:straycare/widgets/textbutton.dart';
import 'package:straycare/widgets/textfield.dart';

import '../Connection/connection.dart';
import '../widgets/sizedbox.dart';

class ReportPetMissingPage extends StatefulWidget {
  const ReportPetMissingPage({Key? key}) : super(key: key);

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

  Future<DateTime?> pickdate() async{
    DateTime? pickedDate;
      pickedDate = await showDatePicker(
        context: (context),
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2030),
    );

    if(pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      misDatectr.text = formattedDate;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  Future<void> submit() async {
    var data = {
      "user_id": "2",
      "name": namectr.text,
      "gender" : genderctr.text,
      "color": colorctr.text,
      "breed": breedctr.text,
      "missingDate": misDatectr.text,
      "location": locationctr.text,
      "mob_no": mobctr.text,
      "animal_type" : animalTypectr.text,
      "description" : descriptionctr.text,
      "report_date": DateTime.now().toString()
    };

    var response = await post(Uri.parse('${Con.url}missing.php'), body: data);
    print(response.statusCode);
    print(response.body);

    if (jsonDecode(response.body)['result'] == 'Success') {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Submitted....')));
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Failed to insert !!....')));
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ReportPetMissingPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 122.h,
        title: Text('REPORT PET MISSING'),
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
              ClipOval(
                child: Container(
                  height: 137.h,
                  width: 161.w,
                  child: Image.asset('assets/images/Ellipse 7.png'),
                ),
              ),

              getTextField("Pet's name:", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, namectr),
              sbh10,

              getTextField("Gender:", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, genderctr),
              sbh10,

              getTextField("Color:", Colors.black, 15.sp, Colors.black, 20.0.w,
                  10.0.h, 50.r, colorctr),
              sbh10,

              getTextField("Breed:", Colors.black, 15.sp, Colors.black, 20.0.w,
                  10.0.h, 50.r, breedctr),
              sbh10,

              getTextField("Animal type:", Colors.black, 15.sp, Colors.black,
                  20.0.w, 10.0.h, 50.r, animalTypectr),
              sbh10,

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
                if (namectr.text.isNotEmpty &&
                    genderctr.text.isNotEmpty &&
                    colorctr.text.isNotEmpty &&
                    breedctr.text.isNotEmpty &&
                    animalTypectr.text.isNotEmpty &&
                    descriptionctr.text.isNotEmpty &&
                    misDatectr.text.isNotEmpty &&
                    locationctr.text.isNotEmpty &&
                    mobctr.text.isNotEmpty) {
                  setState(() {
                    print('ready');
                    submit();
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
