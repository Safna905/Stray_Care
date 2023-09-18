import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/widgets/sizedbox.dart';

import '../Connection/connection.dart';

class DeadDetailsPage extends StatefulWidget {
  DeadDetailsPage(
      {Key? key,
      required this.gender,
      required this.color,
      required this.type,
      required this.healthCondition,
      required this.collectedFrom,
      required this.collectedOn,
      required this.deathReason,
      required this.deathDate,
      required this.image})
      : super(key: key);

  var gender,
      color,
      type,
      healthCondition,
      collectedFrom,
      collectedOn,
      image,
      deathReason,
      deathDate;

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
                    image: NetworkImage(
                        "${Con.url}/CollectedCase/${widget.image}"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w),
                child: SizedBox(
                  height: 200.h,
                  width: 256.w,
                  child: Wrap(direction: Axis.vertical, children: [
                    Text(
                      'Color:${widget.color}',
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
                      'Health condition:${widget.healthCondition}',
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
                      'Collected From :${widget.collectedFrom}',
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
                    Text(
                      'Died on : ${widget.deathDate} ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Text(
                      'Cause of Death : ${widget.deathReason}  ',
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
