

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'moduleview.dart';
import 'officeadopt.dart';
import 'officecollected.dart';
import 'officedead.dart';
import 'officefostering.dart';

class OfficeHomePage extends StatefulWidget {
  const OfficeHomePage({Key? key}) : super(key: key);

  @override
  State<OfficeHomePage> createState() => _OfficeHomePageState();
}

class _OfficeHomePageState extends State<OfficeHomePage> {
  Widget getTextButton(BuildContext context, text, navpage) {
    return Padding(
      padding: EdgeInsets.all(15.0.h),
      child: SizedBox(
        height: 65.h,
        width: 243.w,
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => navpage));
          },
          style: TextButton.styleFrom(
              backgroundColor: Color(0XFF922020).withOpacity(0.42),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              )),
          child: Text(text,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF))),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/Rectangle 177.png',
          ),
          fit: BoxFit.fill,
        )),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //menu icon
                Icon(
                  Icons.menu,
                  size: MediaQuery.of(context).size.width * 0.1,
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
          getTextButton(context,'Collection', OficeCollectedPage(), ),
          getTextButton(context,'Fostering', OfficeFosteringPage()),
          getTextButton(context,'Adoption', OfficeAdoptPage()),
          getTextButton(context,'Died', OfficeDeadPage()),
          getTextButton(context,'Stray', ModuleView(type: "Stray",)),
        ]),
      ),
    );
  }
}
