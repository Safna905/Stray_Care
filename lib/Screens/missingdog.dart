import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MissingDogsPage extends StatefulWidget {
  const MissingDogsPage({Key? key}) : super(key: key);

  @override
  State<MissingDogsPage> createState() => _MissingDogsPageState();
}

class _MissingDogsPageState extends State<MissingDogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFFFCE56),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu,
                      size: MediaQuery.of(context).size.width * 0.1,
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
              Padding(
                padding: EdgeInsets.only(bottom: 30.0.h,
                    top: 30.h),
                child: Container(
                  height: 75.h,
                  width: 263.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(39.r),
                    color: const Color(0xFFCE3434).withOpacity(0.4),
                  ),
                  child: Center(
                    child: Text(
                      'DOGS',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),

              //search bar
              Container(
                height: 53.h,
                width: 310.w,
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF).withOpacity(0.45),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.w,
                      vertical: 10.h),
                  child: Row(
                    children: [
                      Text('search',
                        style: TextStyle(
                          color: Color(0xFFBDC3C7),
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                        ),),
                      SizedBox(width: 150.w),
                      Icon(Icons.search,
                        size:MediaQuery.of(context).size.width * 0.09 ,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 600.h,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder:(context, index) {
                      return Padding(
                        padding:  EdgeInsets.symmetric(vertical: 15.h),
                        child: ListTile(
                          leading: Container(
                            height: 104.h,
                            width: 120.w,
                            child: Image.asset('assets/images/Rectangle 63.png',),
                          ),
                        ),
                      );

                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

