

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/Screens/reportpetmissing.dart';
import 'package:straycare/widgets/sizedbox.dart';
import 'package:straycare/widgets/text.dart';

import 'missing_pet_list.dart';

class PetFoundPage extends StatefulWidget {
  const PetFoundPage({Key? key}) : super(key: key);

  @override
  State<PetFoundPage> createState() => _PetFoundPageState();
}

class _PetFoundPageState extends State<PetFoundPage> {
  Widget getTextButton(String text, Widget navpage) {
    return Padding(
      padding: EdgeInsets.all(15.0.h),
      child: SizedBox(
        height: 86.h,
        width: 299.w,
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => navpage));
          },
          style: TextButton.styleFrom(
              backgroundColor: const Color(0XFF0F0E0E).withOpacity(0.75),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r)
            ),
      ),
          child: Text(text,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF))),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 112.h,
        title: text('FIND MISSING PET', 20.sp, Colors.white, FontWeight.w600),
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
            child: Column(
              children: [

                sbh30,
                sbh30,
                //catogories of found your pet
                getTextButton('MISSING PET LIST', MissingPetListPage()),
                getTextButton( 'REPORT PET MISSING',ReportPetMissingPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
