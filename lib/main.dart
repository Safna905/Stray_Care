import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:straycare/Screens/welcome.dart';

import 'Screens/otp_verified.dart';
import 'Screens/screenone.dart';
import 'Screens/screentwo.dart';
import 'Screens/sign_in.dart';
import 'Screens/signup.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFFFFCE56),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home:
        OtpVerifiedPage(),
        // SignUpPage(),
        //SignInPage(),
          //WelcomePage(),
        //ScreenTwo(),
        //ScreenOne(),
      ),
      designSize: const Size(360, 800),
    );
  }
}
