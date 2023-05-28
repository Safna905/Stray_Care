import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeathReasonPage extends StatefulWidget {
  const DeathReasonPage({Key? key}) : super(key: key);

  @override
  State<DeathReasonPage> createState() => _DeathReasonPageState();
}

class _DeathReasonPageState extends State<DeathReasonPage> {
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
              'assets/images/lightbg.png',
            ),
            fit: BoxFit.fill,
          )),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Icon(
                  Icons.menu,
                  size: MediaQuery.of(context).size.width * 0.1,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 55.w),
                child: Container(
                  height: 161.h,
                  width: 237.w,
                  child: Image.asset('assets/images/Rectangle 191.png'),
                ),
              ),
              Center(
                child: Container(
                  height: 180.h,
                  width: 244.w,
                  color: Color(0xFFD9D9D9).withOpacity(0.51),
                  child: Text('Reason for Death',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w),
                child: Text(
                  'Collected From :Vilayur veterinary hospital on:04/05/2022  ',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w, vertical: 60.h),
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
                        'Dead',
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
