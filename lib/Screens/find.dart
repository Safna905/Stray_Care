import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/widgets/textbutton.dart';

import '../widgets/sizedbox.dart';

class FindPage extends StatelessWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 122.h,
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

      //body with #FFCE56 backgroundColor
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFFFCE56),
        child: Padding(
          padding: EdgeInsets.only(bottom: 30.h),
          child: Container(
              height: 622.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/Rectangle 166 2.png',
                ),
                fit: BoxFit.fill,
              )),

              //find button
              child: Padding(
                padding: EdgeInsets.only(top: 400.h, bottom:120.h,
                left: 88.w,
                right: 88.w),
                child: Center(
                  child: textbutton(183.0.w, 50.0.h, const Color(0xFFFFCE56), 0.0,
                      'FIND', 16.sp, FontWeight.w800),
                ),
              )),
        ),
      ),
    );
  }
}
