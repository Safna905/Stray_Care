import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/sizedbox.dart';
import '../widgets/text.dart';

class HelpLinePage extends StatefulWidget {
  const HelpLinePage({Key? key}) : super(key: key);

  @override
  State<HelpLinePage> createState() => _HelpLinePageState();
}

class _HelpLinePageState extends State<HelpLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Android Large - 2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            text('Help Line', 20.sp, Colors.black, FontWeight.w400),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 125.w, vertical: 5.h),
              child: SizedBox(
                  height: 115.h,
                  width: 115.w,
                  child: Image.asset(
                      'assets/images/Rectangle_28-removebg-preview.png')),
            ),
            SizedBox(
              height: 500.h,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.h),
                        child: Center(
                            child: text('OUR STRAY CARE OFFICES ', 20.sp,
                                Colors.black, FontWeight.w600)),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        child: ListTile(
                          leading: Icon(
                            Icons.house_outlined,
                            size: MediaQuery.of(context).size.width * 0.1,
                            color: Colors.black,
                          ),
                          title: text(' PERINTHALMANNA', 16.sp, Colors.black,
                              FontWeight.w400),
                          subtitle: Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text('Kunnapally ,', 14.sp, Colors.black,
                                    FontWeight.w400),
                                text('pin-678908 ', 14.sp, Colors.black,
                                    FontWeight.w400),
                                text('Call_9087654389,', 14.sp, Colors.blue,
                                    FontWeight.w400),
                              ],
                            ),
                          ),
                        ),
                      ),
                      sizedbox(10.h, 0.0),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        child: ListTile(
                          leading: Icon(
                            Icons.house_outlined,
                            size: MediaQuery.of(context).size.width * 0.1,
                            color: Colors.black,
                          ),
                          title: text(' PERINTHALMANNA', 16.sp, Colors.black,
                              FontWeight.w400),
                          subtitle: Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text('Kunnapally ,', 14.sp, Colors.black,
                                    FontWeight.w400),
                                text('pin-678908 ', 14.sp, Colors.black,
                                    FontWeight.w400),
                                text('Call_9087654389,', 14.sp, Colors.blue,
                                    FontWeight.w400),
                              ],
                            ),
                          ),
                        ),
                      ),
                      sizedbox(10.h, 0.0),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        child: ListTile(
                          leading: Icon(
                            Icons.house_outlined,
                            size: MediaQuery.of(context).size.width * 0.1,
                            color: Colors.black,
                          ),
                          title: text(' PERINTHALMANNA', 16.sp, Colors.black,
                              FontWeight.w400),
                          subtitle: Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text('Kunnapally ,', 14.sp, Colors.black,
                                    FontWeight.w400),
                                text('pin-678908 ', 14.sp, Colors.black,
                                    FontWeight.w400),
                                text('Call_9087654389,', 14.sp, Colors.blue,
                                    FontWeight.w400),
                              ],
                            ),
                          ),
                        ),
                      ),
                      sizedbox(10.h, 0.0),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        child: ListTile(
                          leading: Icon(
                            Icons.house_outlined,
                            size: MediaQuery.of(context).size.width * 0.1,
                            color: Colors.black,
                          ),
                          title: text(' PERINTHALMANNA', 16.sp, Colors.black,
                              FontWeight.w400),
                          subtitle: Padding(
                            padding: EdgeInsets.only(left: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text('Kunnapally ,', 14.sp, Colors.black,
                                    FontWeight.w400),
                                text('pin-678908 ', 14.sp, Colors.black,
                                    FontWeight.w400),
                                text('Call_9087654389,', 14.sp, Colors.blue,
                                    FontWeight.w400),
                              ],
                            ),
                          ),
                        ),
                      ),
                      sizedbox(10.h, 0.0),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
