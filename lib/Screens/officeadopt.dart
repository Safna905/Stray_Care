import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfficeAdoptPage extends StatefulWidget {
  const OfficeAdoptPage({Key? key}) : super(key: key);

  @override
  State<OfficeAdoptPage> createState() => _OfficeAdoptPageState();
}

class _OfficeAdoptPageState extends State<OfficeAdoptPage> {
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
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //search bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 32.h),
                child: Container(
                  height: 53.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF).withOpacity(0.45),
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: Colors.black,
                      )),
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
              ),

              //gridview of images
              Container(
                height: 500.h,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:1.5,

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
            ]),
          ),
        ),
      ),
    );
  }
}
