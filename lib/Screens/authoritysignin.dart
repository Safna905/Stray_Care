import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'moduleview.dart';

class AuthoritySignIn extends StatefulWidget {
  AuthoritySignIn({Key? key, required this.ctype}) : super(key: key);
  var ctype;

  @override
  State<AuthoritySignIn> createState() => _AuthoritySignInState();
}

class _AuthoritySignInState extends State<AuthoritySignIn> {

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
          decoration: const BoxDecoration(
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

                //Container for login section
                Padding(
                  padding:  EdgeInsets.only(
                      bottom: 30.h,
                      right: 30.w,
                      left: 30.w
                  ),
                  child: Container(
                    height: 532.h,
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
                            padding: EdgeInsets.symmetric(vertical: 40.h),
                            child: Text(
                              "Let's get Started",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          //textfield for email
                          getTextField(hint: 'Usercode'),
                          SizedBox(
                            height: 30.h,
                          ),
                          getTextField(hint: 'Password'),
                          SizedBox(
                            height: 30.h,
                          ),

                          //signin button
                          SizedBox(
                            height: 43.h,
                            width: 146.w,
                            child: OutlinedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ModuleView(type: widget.ctype)));
                                },
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: darkcolor,
                                    foregroundColor: lightcolor,
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(120.r)
                                    )
                                ),

                                child: Text('SIGN IN',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                    ))),
                          ),

                          //sign in with facbook or google
                          Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Wrap(

                              children: [
                                SizedBox(
                                    width: 26.w,
                                    child: const Divider(
                                      color: Color(0xFFD9D9D9),
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const Text('If feeling lazy'),
                                SizedBox(
                                  width: 10.w,
                                ),
                                SizedBox(
                                  width: 26.w,
                                  child: const Divider(
                                    color: Color(0xFFD9D9D9),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(
                              left: 83.w,
                              right: 83.w,
                              bottom: 28.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/fblogo.png',
                                  width: 28.w,
                                  height: 28.h,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(
                                  'assets/images/Rectangle 7.png',
                                  width: 28.w,
                                  height: 28.h,
                                ),
                              ],
                            ),
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
