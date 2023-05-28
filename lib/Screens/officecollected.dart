import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OficeCollectedPage extends StatefulWidget {
  const OficeCollectedPage({Key? key}) : super(key: key);

  @override
  State<OficeCollectedPage> createState() => _OficeCollectedPageState();
}

class _OficeCollectedPageState extends State<OficeCollectedPage> {
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
          child:
              SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.all(30.0),
                child: Icon(
                  Icons.menu,
                  size: MediaQuery.of(context).size.width * 0.1,
                  color: Color(0xFFFFFFFF),
                ),
            ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 61.w,
                        left: 61.w,
                    ),
                    child: Container(
                      height: 75.h,
                      width: 263.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(39.r),
                        color: const Color(0xFF922020).withOpacity(0.42),
                      ),
                      child: Center(
                        child: Text(
                          'Collected animals',
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
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 25.w,vertical: 32.h),
                    child: Container(
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
                  ),
                  Container(
                    height: 500.h,
                    child: GridView.builder(
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.0,
                          mainAxisSpacing: 0.0,
                        ),
                        itemCount: 10,
                        itemBuilder: (context,index) {
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
