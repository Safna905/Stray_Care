import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:straycare/widgets/sizedbox.dart';

import '../Connection/connection.dart';
import '../widgets/text.dart';
import 'missingdog.dart';

class MissingPetListPage extends StatefulWidget {
  const MissingPetListPage({Key? key}) : super(key: key);

  @override
  State<MissingPetListPage> createState() => _MissingPetListPageState();
}

class _MissingPetListPageState extends State<MissingPetListPage> {
  void nav(String type) {
    print(type);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MissingDogsPage(type)));
  }

  Widget getTextButton(String text, VoidCallback callback) {
    return Padding(
      padding: EdgeInsets.all(15.0.h),
      child: SizedBox(
        height: 86.h,
        width: 299.w,
        child: TextButton(
          onPressed: callback,
          style: TextButton.styleFrom(
            backgroundColor: const Color(0XFF0F0E0E).withOpacity(0.75),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r)),
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
                  //catogories
                  getTextButton('DOGS', () {
                    nav('dog');
                  }),
                  getTextButton('CAT', () {
                    nav("cat");
                  }),
                  getTextButton('OTHER', () {
                    nav("other");
                  }),
                ],
              ),
            ),
          ),
        ));
  }
}
