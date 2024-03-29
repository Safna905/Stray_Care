import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/Screens/sign_in.dart';
import 'package:straycare/Screens/userhome.dart';

import '../widgets/sizedbox.dart';
import 'authoritysignin.dart';

class SigninCatogoriesPage extends StatefulWidget {
  const SigninCatogoriesPage({Key? key}) : super(key: key);

  @override
  State<SigninCatogoriesPage> createState() => _SigninCatogoriesPageState();
}

class _SigninCatogoriesPageState extends State<SigninCatogoriesPage> {
  Widget button(text, navpage) {
    return SizedBox(
      height: 43.h,
      width: 236.w,
      child: OutlinedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => navpage));
          },
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(120.r)),
              side: BorderSide(color: Colors.black)
          ),
          child: Text(text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              padding: EdgeInsets.only(bottom: 30.h, right: 30.w, left: 30.w),
              child: Container(
                height: 532.h,
                width: 309.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Padding(
                          padding: EdgeInsets.only(top: 40.h,
                          bottom: 30.h,
                          left: 10.w,
                              right: 130.w
                    ),
                          child: Text(
                            "Sign in as :",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        button("USER", SignInPage()),
                        sbh10,
                        button("OFFICE", SignInPage()),
                        sbh10,
                        button("LOCAL SELF GOVRNMENT", AuthoritySignIn(ctype: "Aggressive",)),
                        sbh10,
                        button("POLICE", AuthoritySignIn(ctype: "Abused",)),
                        sbh10,
                        button("FOREST", AuthoritySignIn(ctype: "Wild",)),
                        sbh10,
                        button("VETERINARY", AuthoritySignIn(ctype: "injured",))



                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
