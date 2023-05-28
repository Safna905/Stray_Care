import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportInjuredPage extends StatefulWidget {
  const ReportInjuredPage({Key? key}) : super(key: key);

  @override
  State<ReportInjuredPage> createState() => _ReportInjuredPageState();
}

class _ReportInjuredPageState extends State<ReportInjuredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_2.png'),
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
                
                //profile pic
                ClipOval(
                  child: Container(
                    height: 137.h,
                    width: 161.w,
                    child: Image.asset('assets/images/Ellipse 7.png'),
                  ),
                ),
                Text('UPDATE THE PHOTO',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                  fontStyle: FontStyle.italic,
                ),),

                //description section
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 199.h,
                    width: 319.w,
                    color: Color(0xFFFFFFFF).withOpacity(0.87),
                    child: Text(
                      'Add a Description.....',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),

                //submit button
                SizedBox(
                  height: 66.h,
                  width: 263.w,
                  child: OutlinedButton(onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFFEA8E8E).withOpacity(0.4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      )
                    ),
                      child: Text('submit',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                      ),),
                  ),
                )
        ]
        ),
      ),
    )
    );
  }
}
