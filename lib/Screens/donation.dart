import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({Key? key}) : super(key: key);

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
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
      body: Container(
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
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 43.w,vertical: 50.h),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.r)
                      ),
                      hintText: 'Enter amount',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: Color(0xFFBDC3C7),
                      )
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/Rectangle 83.png'),
                    Image.asset('assets/images/Rectangle 82.png'),
                    Image.asset('assets/images/Rectangle 81.png'),
                    ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  height: 33.h,
                    width: 113.w,
                  child: TextButton(onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF7E0D0D).withOpacity(0.48),
                    ),
                      child: Text('OTHER',
                        style: TextStyle(
                            color: Color(0xFF000000),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),

                  ),),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
