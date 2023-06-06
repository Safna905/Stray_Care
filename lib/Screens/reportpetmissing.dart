import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/widgets/textbutton.dart';
import 'package:straycare/widgets/textfield.dart';


import '../widgets/sizedbox.dart';

class ReportPetMissingPage extends StatefulWidget {
  const ReportPetMissingPage({Key? key}) : super(key: key);

  @override
  State<ReportPetMissingPage> createState() => _ReportPetMissingPageState();
}

class _ReportPetMissingPageState extends State<ReportPetMissingPage> {
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


             getTextField("Pet's name:" , Colors.black, 15.sp,  Colors.black, 20.0.w, 10.0.h, 50.r),
              sbh10,

              getTextField("Color:" , Colors.black, 15.sp,  Colors.black, 20.0.w, 10.0.h, 50.r),
              sbh10,

              getTextField("Age :" , Colors.black, 15.sp,  Colors.black, 20.0.w, 10.0.h, 50.r),
              sbh10,

              getTextField("Missing Date :" , Colors.black, 15.sp,  Colors.black, 20.0.w, 10.0.h, 50.r),
              sbh10,

              getTextField("Location:" , Colors.black, 15.sp,  Colors.black, 20.0.w, 10.0.h, 50.r),
              sbh10,

              getTextField("Your Mobile Number :" , Colors.black, 15.sp,  Colors.black, 20.0.w, 10.0.h, 50.r),
              sbh30,

              textbutton(263.w, 66.h,Colors.green, 50.r, 'submit', 20.sp, FontWeight.w600),


            ],
          ),
        ),
      ),

    );
  }
}
