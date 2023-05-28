import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PetFoundPage extends StatelessWidget {
  const PetFoundPage({Key? key}) : super(key: key);

  Widget getTextButton({required String text}) {
    return Padding(
      padding:  EdgeInsets.all(15.0.h),
      child: SizedBox(
        height: 33.h,
        width: 293.w,
        child: TextButton(onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Color(0XFF000000).withOpacity(0.55)
          ),
          child: Text(text,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)
              )
          ),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFFFCE56),
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
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 50.0.h),
                  child: Container(
                    height: 75.h,
                    width: 263.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(39.r),
                      color: const Color(0xFFCE3434).withOpacity(0.4),
                    ),
                    child: Center(
                      child: Text(
                        'FOUND  YOUR PET',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),

                //catogories of found your pet
                getTextButton(text: 'MISSING PET LIST'),
                getTextButton(text: 'REPORT YOUR PET MISSING'),

              ],
        ),
      ),
    ),
    );
  }
}
