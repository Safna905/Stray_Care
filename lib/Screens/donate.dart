import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //first container
            Container(
              height: 224.h,
              width: 360.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/images (4) 1.png'),
                fit: BoxFit.fill,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 53.h,
                      bottom: 35.h,
                      left: 20.w,
                    ),
                    child: Text(
                      'GIVING STRAY ANIMALS A CHANCE',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      'Whether it’s a loving adoptive home or simply a better chance on the streets, we’re  ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                        fontSize: 16.sp,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),

            //second container
            Container(
              height: 188.h,
              width: 360.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/images (2) 1.png'),
                fit: BoxFit.fill,
              )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  'Whether it’s a loving adoptive home or simply a better chance on the streets, we’re fighting to give stray animals a better life in India. Despite its smart, social personality, India’s native dog breed, the “Pariah Dog”, is misunderstood as wild and dangerous, resulting in the local population being highly reluctant to adopt these animals.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                    fontSize: 16.sp,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),

            //third container
            Container(
              height: 279.h,
              width: 367.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/images (5) 1.png'),
                fit: BoxFit.fill,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    'reluctant to adopt these animals.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(height: 50.h,),
                SizedBox(
                  height: 50.h,
                  width: 183.w,
                  child: TextButton(onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFFCE56)
                      ),
                      child: Text('DONATE',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color:  Color(0xFFFFFFFF),
                      ),)),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
