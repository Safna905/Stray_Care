import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:straycare/Screens/welcome.dart';

import 'Screens/screenone.dart';
import 'Screens/screentwo.dart';
import 'Screens/sign_in.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFFFFCE56),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home:
        SignInPage(),
          //WelcomePage(),
        //ScreenTwo(),
        //ScreenOne(),
      ),
      designSize: Size(360, 800),
    );
  }
}
