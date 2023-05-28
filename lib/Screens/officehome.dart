import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfficeHomePage extends StatelessWidget {
  const OfficeHomePage({Key? key}) : super(key: key);

  Widget getTextButton({required String text}) {
    return Padding(
      padding:  EdgeInsets.all(15.0.h),
      child: SizedBox(
        height: 65.h,
        width: 243.w,
        child: TextButton(onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Color(0XFF922020).withOpacity(0.42),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
            )
          ),
          child: Text(text,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)
              )
          ),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Rectangle 177.png', ),
              fit: BoxFit.fill,

            )),
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //menu icon
            Icon(
              Icons.menu,
              size: MediaQuery.of(context).size.width *0.1,
              color: Color(0xFFFFFFFF),
            ),
            SizedBox(
              width: 146.w,
            ),
            Image.asset(
              'assets/images/Rectangle_28-removebg-preview.png',
              height: 136.h,
              width: 111.w,
            ),
          ],
        ),
      ),

              
              //catogories
              getTextButton(text: 'View collected animals'),
              getTextButton(text: 'View animals under fostering'),
              getTextButton(text: 'View Adopted animals'),
              getTextButton(text: 'View dead animals'),
            ]
    ),
    ),
    );
  }
}
