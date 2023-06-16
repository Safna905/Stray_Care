import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/widgets/sizedbox.dart';
import 'package:straycare/widgets/textfield.dart';

class ReportInjuredPage extends StatefulWidget {
  const ReportInjuredPage({Key? key}) : super(key: key);

  @override
  State<ReportInjuredPage> createState() => _ReportInjuredPageState();
}

class _ReportInjuredPageState extends State<ReportInjuredPage> {
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
            child: Column(children: [
              sbh30,
              //profile pic
              ClipOval(
                child: Container(
                  height: 137.h,
                  width: 161.w,
                  child: Image.asset('assets/images/Ellipse 7.png'),
                ),
              ),


              //description section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.w),
                child: textfield( 'Add a Description.....', Colors.black, 20.sp, Colors.black, 20.w, 30.h, 0.0, Colors.transparent),
              ),



              //Location
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w,),
                child: textfield('Location', Colors.black, 20.sp,  Colors.transparent, 30.w, 15.h, 5.0.r, const Color(0xFFD9D9D9)),
              ),

              sbh30,
              //submit button
              SizedBox(
                height: 66.h,
                width: 263.w,
                child: OutlinedButton(
                  onPressed: () {},
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
    );
  }
}
