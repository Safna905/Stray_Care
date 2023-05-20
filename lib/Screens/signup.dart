import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final lightText = const Color(0xFFBDC3C7);
  final darkcolor = const Color(0xFF000000);
  final lightcolor = const Color(0xFFFFFFFF);

  Widget getTextField({required String hint}) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(50.r),
      child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.r),
                  borderSide:
                  BorderSide(color: darkcolor, style: BorderStyle.solid)),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 16.sp,
                color: lightText,
              ))),
    );
  }


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
          child: SingleChildScrollView(
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

                //Container for signup section
                Padding(
                  padding:  EdgeInsets.only(bottom: 30.h,
                      right: 30.w,
                      left: 30.w
                  ),
                  child: Container(
                    height: 562.h,
                    width: 309.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: lightcolor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          //let's get started text
                          Padding(
                            padding: EdgeInsets.only(
                          top: 20.h,
                        bottom:  30.h,
                      ),
                            child: Text(
                              'Lets get Started',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          //textfield for email
                          getTextField(hint: 'FullName'),
                          SizedBox(
                            height: 25.h,
                          ),
                          getTextField(hint: 'Email'),
                          SizedBox(
                            height: 25.h,
                          ),
                          getTextField(hint: 'Place'),
                          SizedBox(
                            height: 25.h,
                          ),
                          getTextField(hint: 'UserName'),
                          SizedBox(
                            height: 25.h,
                          ),
                          getTextField(hint: 'Password'),
                          SizedBox(
                            height: 25.h,
                          ),


                          //signin button
                          SizedBox(
                            height: 43.h,
                            width: 146.w,
                            child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: darkcolor,
                                    foregroundColor: lightcolor,
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(120.r)
                                    )
                                ),

                                child: Text('SIGN UP',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                    ))),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
