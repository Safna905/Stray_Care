import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final lightText = Color(0xFFBDC3C7);
  final darkcolor = Color(0xFF000000);
  final lightcolor = Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        //Container for background image
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/Android Large - 1.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //logo image
              Padding(
                padding: EdgeInsets.symmetric(vertical: 19.h),
                child: Image.asset(
                  'assets/images/Rectangle_28-removebg-preview.png',
                  width: 111.w,
                  height: 136.h,
                ),
              ),

              //Container for login section
              Container(
                height: 562.h,
                width: 309.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: lightcolor,
                ),
                child: Column(
                  children: [

                    //textfield for email
                    TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.r),
                        borderSide: BorderSide(
                          color: Colors.transparent
                        )
                      ),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: lightText,
                          )
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
