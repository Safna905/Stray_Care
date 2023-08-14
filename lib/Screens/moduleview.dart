import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/sizedbox.dart';
import '../widgets/textfield.dart';

class ModuleView extends StatefulWidget {
  const ModuleView({Key? key}) : super(key: key);

  @override
  State<ModuleView> createState() => _ModuleViewState();
}

class _ModuleViewState extends State<ModuleView> {


  TextEditingController rnamectr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/Rectangle 202.png',
            ),
            fit: BoxFit.fill,
          )),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.menu,
                  size: MediaQuery.of(context).size.width * 0.1,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w,
                bottom: 10.h),
                child: Text('Reporter Name :',
                    style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: Colors.white,
                ),),
              ),
                   getTextField("", Colors.black, 20.sp, Colors.black, 10.0.w,
                      20.0.h, 10.r,rnamectr),
               sbh30,



                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w,
                        bottom: 10.h),
                    child: Text('Location',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        color: Colors.white,
                      ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w,
                        bottom: 10.h),
                    child: Text('Time',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        color: Colors.white,
                      ),),
                  ),
              Center(
                child: Container(
                  height: 218.h,
                  width: 321.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Rectangle 204.png'),
                          fit: BoxFit.fill)),
                ),
              ),
              Center(
                child: Container(
                  height: 138.h,
                  width: 321.w,
                  color: Color(0xFFD9D9D9).withOpacity(0.51),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w, vertical: 10.h),
                child: SizedBox(
                  height: 65.h,
                  width: 243.w,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF922020).withOpacity(0.42),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          )),
                      onPressed: () {},
                      child: Text(
                        'Call Reporter',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w, vertical: 10.h),
                child: SizedBox(
                  height: 65.h,
                  width: 243.w,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF922020).withOpacity(0.42),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          )),
                      onPressed: () {},
                      child: Text(
                        'Call Stray care',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w, vertical: 10.h),
                child: SizedBox(
                  height: 65.h,
                  width: 243.w,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF2B787A).withOpacity(0.58),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          )),
                      onPressed: () {},
                      child: Text(
                        'Collected',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
