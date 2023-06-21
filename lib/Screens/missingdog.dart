import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/widgets/sizedbox.dart';

import '../widgets/text.dart';

class MissingDogsPage extends StatefulWidget {
  const MissingDogsPage({Key? key}) : super(key: key);

  @override
  State<MissingDogsPage> createState() => _MissingDogsPageState();
}

class _MissingDogsPageState extends State<MissingDogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 112.h,
        title: text('DOGS', 20.sp, Colors.white, FontWeight.w600),
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
            child: SingleChildScrollView(
              child: Column(
                children: [

                  sbh30,
                  //search bar
                  Container(
                    height: 53.h,
                    width: 310.w,
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF).withOpacity(0.45),
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all()
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                      child: Row(
                        children: [
                          Text(
                            'search',
                            style: TextStyle(
                              color: Color(0xFFBDC3C7),
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp,
                            ),
                          ),
                          SizedBox(width: 150.w),
                          Icon(
                            Icons.search,
                            size: MediaQuery.of(context).size.width * 0.09,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 500.h,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.1,
                          mainAxisSpacing: 0.0,
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 102.h,
                            width: 119.w,
                            child: Image.asset('assets/images/Rectangle 183.png'),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
