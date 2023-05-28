import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportAnimalIssuePge extends StatelessWidget {
  const ReportAnimalIssuePge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        //Background image
        child: Container(

          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/darkbg.png', ),
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
              Container(
                height: 74.h,
                width: 307.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(39.r),
                  color: const Color(0xFFE62828).withOpacity(0.4),
                ),
                child: Center(
                  child: Text(
                    'REPORTING ANIMAL ISSUES',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: SizedBox(
                  height: 367.h,
                  width: 328.w,
                  child: Wrap(
                    children: [
                      Text('1.Record a video and take pictures with an app that shows the date,time,and location. Without evidence ,we or police or court cannot help.',
                      style: GoogleFonts.ibarraRealNova(
                        textStyle:  TextStyle(
                          fontSize: 20.sp,
                            color: const Color(0xFFFFFFFF)
                        ),
                      ),
                        textScaleFactor:0.9,
                     ),
                          Text('2.Stop the abuse.if it doesn’t stop,raise your voice.',
                            style: GoogleFonts.ibarraRealNova(
                                textStyle:  TextStyle(
                                  fontSize: 20.sp,
                                    color: const Color(0xFFFFFFFF)
                                )
                            ),
                            textScaleFactor:0.9,
                          ),
                          Text('3.Call people around.Call police.',
                            style: GoogleFonts.ibarraRealNova(
                                textStyle:  TextStyle(
                                  fontSize: 20.sp,
                                    color: const Color(0xFFFFFFFF)
                                )
                            ),
                            textScaleFactor:0.9,),
                          Text('4.Meanwhile explain the laws that injuring or killing an animal is punishable as per to section 11(1)(L) of The prevention of cruelty to Animal Act(PCA)1960.',
                            style: GoogleFonts.ibarraRealNova(
                                textStyle:  TextStyle(
                                  fontSize: 20.sp,
                                    color: const Color(0xFFFFFFFF)
                                )
                            ),),
                          Text('5.Report cruelty using below form,we will act',
                            style: GoogleFonts.ibarraRealNova(
                                textStyle:  TextStyle(
                                  fontSize: 20.sp,
                                    color: const Color(0xFFFFFFFF)
                                )
                            ),
                            textScaleFactor:0.9,),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 165.w,
                height: 53.h,
                child: TextButton(onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF146D4D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r)
                    )
                  ),
                    child: Text('REPORT',
                      style: TextStyle(
                          color: const Color(0xFFFFFFFF),
                        fontSize: 20.sp,fontWeight: FontWeight.w600,
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
