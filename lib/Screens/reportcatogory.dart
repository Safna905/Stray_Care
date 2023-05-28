import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportCatogoryPage extends StatefulWidget {
  const ReportCatogoryPage({Key? key}) : super(key: key);

  @override
  State<ReportCatogoryPage> createState() => _ReportCatogoryPageState();
}

class _ReportCatogoryPageState extends State<ReportCatogoryPage> {

  Widget getbutton({required String text}) {
    return SizedBox(
      height: 86.h,
      width: 299.w,
      child: ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFEA8E8E).withOpacity(0.59),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0.r),
            )
          ),
          child:Text(text,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),) ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/ph_51176_220435 1.png'),
                fit: BoxFit.fill,
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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

              SizedBox(height: 30.h,),
              getbutton(text: 'FOUND INJURED ANIMAL'),
              SizedBox(height: 30.h,),
              getbutton(text: 'FOUND AGRESSIVE ANIMAL'),
              SizedBox(height: 30.h,),
              getbutton(text: 'FOUND WILD ANIMAL'),
              SizedBox(height: 30.h,),
              getbutton(text: 'FOUND ABUSED ANIMAL'),

            ],
          ),
        ),
      ),
    );
  }
}
