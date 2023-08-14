import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/Screens/report-injured.dart';

import '../widgets/sizedbox.dart';

class ReportCatogoryPage extends StatefulWidget {
  const ReportCatogoryPage({Key? key}) : super(key: key);

  @override
  State<ReportCatogoryPage> createState() => _ReportCatogoryPageState();
}

class _ReportCatogoryPageState extends State<ReportCatogoryPage> {
  Widget getbutton(String text, String type) {
    return SizedBox(
      height: 86.h,
      width: 299.w,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ReportInjuredPage(casetype:type)));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF0F0E0E).withOpacity(0.75),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0.r),
              )),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }

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
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFFFCE56),
        child: Padding(
          padding:EdgeInsets.only(
              bottom: 53.h
          ),
          child: Container(
            height: 622.h,
            width: 360.w,
            color: Color(0xFFFFFFFF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  sbh30,

                  getbutton('STRAY ANIMAL', "Stray"),
                  sbh10,
                  getbutton( 'INJURED ANIMAL', "Injured"),
                  sbh10,
                  getbutton( 'AGRESSIVE ANIMAL', "Aggressive"),
                  sbh10,
                  getbutton('WILD ANIMAL', "Wild"),
                  sbh10,
                  getbutton('ABUSE TOWARDS ANIMALS', "Abused"),
                  sbh10,
                ],
              ),
            ),
          ),
        ),

    );
  }
}
