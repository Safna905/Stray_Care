import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Connection/connection.dart';

class CollectionDetailPage extends StatefulWidget {
  CollectionDetailPage(
      {Key? key,
      required this.gender,
      required this.color,
      required this.type,
      required this.healthCondition,
      required this.collectedFrom,
      required this.collectedOn,
      required this.image})
      : super(key: key);

  var gender, color, type, healthCondition, collectedFrom, collectedOn, image;
  @override
  State<CollectionDetailPage> createState() => _CollectionDetailPageState();
}

class _CollectionDetailPageState extends State<CollectionDetailPage> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Text(
                    'Edit image',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 55.w),
                child: Container(
                  height: 161.h,
                  width: 237.w,
                  child: Image(
                    image: NetworkImage("${Con.url}/CollectedCase/${widget.image}"),
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w),
                child: SizedBox(
                  height: 200.h,
                  width: 256.w,
                  child: Wrap(direction: Axis.vertical, children: [
                    Text(
                      'Color: ${widget.color}',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Gender : ${widget.gender}  ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Animal Type : ${widget.type}',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Health condition : ${widget.healthCondition}',
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
                      'Collected From : ${widget.collectedFrom}',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Collected on : ${widget.collectedOn} ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                  ]),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 55.w,
              //   ),
              //   child: SizedBox(
              //     height: 65.h,
              //     width: 243.w,
              //     child: TextButton(
              //         style: TextButton.styleFrom(
              //             backgroundColor: Color(0xFF922020).withOpacity(0.42),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(30.r),
              //             )),
              //         onPressed: () {},
              //         child: Text(
              //           'Dead',
              //           style: TextStyle(
              //             fontSize: 20.sp,
              //             fontWeight: FontWeight.w600,
              //             color: Colors.white,
              //           ),
              //         )),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 55.w, vertical: 30.h),
              //   child: SizedBox(
              //     height: 65.h,
              //     width: 243.w,
              //     child: TextButton(
              //         style: TextButton.styleFrom(
              //             backgroundColor: Color(0xFF922020).withOpacity(0.42),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(30.r),
              //             )),
              //         onPressed: () {},
              //         child: Text(
              //           'Adopted',
              //           style: TextStyle(
              //             fontSize: 20.sp,
              //             fontWeight: FontWeight.w600,
              //             color: Colors.white,
              //           ),
              //         )),
              //   ),
              // ),
            ]),
          ),
        ),
      ),
    );
  }
}
