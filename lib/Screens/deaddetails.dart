import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeadDetailsPage extends StatefulWidget {
  const DeadDetailsPage({Key? key}) : super(key: key);

  @override
  State<DeadDetailsPage> createState() => _DeadDetailsPageState();
}

class _DeadDetailsPageState extends State<DeadDetailsPage> {
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
                  child: Image.asset('assets/images/sickdog.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w),
                child: SizedBox(
                  height: 200.h,
                  width: 256.w,
                  child: Wrap(direction: Axis.vertical, children: [
                    Text(
                      'Color:Brown',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Draft Type',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Health condition:Left leg fracture',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Collected From :Vilayur veterinary hospital on:04/05/2022  ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Died on : 18/9/2022  ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Cause of Death : caccidiamycosis  ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                  ]),
                ),
              ),

            ]),
          ),
        ),
      ),
    );

  }
}
