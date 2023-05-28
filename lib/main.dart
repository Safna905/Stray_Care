import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:straycare/Screens/welcome.dart';

import 'Screens/Fosteringdetails.dart';
import 'Screens/deaddetails.dart';
import 'Screens/deathreason.dart';
import 'Screens/donate.dart';
import 'Screens/donation.dart';
import 'Screens/donationdone.dart';
import 'Screens/editprofile.dart';
import 'Screens/missing_pet_list.dart';
import 'Screens/missingdog.dart';
import 'Screens/moduleview.dart';
import 'Screens/movetofoster.dart';
import 'Screens/officeadopt.dart';
import 'Screens/officecollected.dart';
import 'Screens/officedead.dart';
import 'Screens/officefostering.dart';
import 'Screens/officehome.dart';
import 'Screens/otp_verified.dart';
import 'Screens/pet_found.dart';
import 'Screens/report-injured.dart';
import 'Screens/report_animal_issue.dart';
import 'Screens/reportcatogory.dart';
import 'Screens/screenone.dart';
import 'Screens/screentwo.dart';
import 'Screens/sign_in.dart';
import 'Screens/signup.dart';
import 'Screens/userhome.dart';


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

          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFFFFCE56),
          ),
          bottomAppBarTheme: BottomAppBarTheme(
            color: Color(0xFFFFCE56),
          )
        ),
        home:
        EditProfilePage()
        //ModuleView()
        //DeathReasonPage()
        //FosteringDetailPage()
        //OfficeFosteringPage()
        //OfficeAdoptPage()
        //DeadDetailsPage()
        //OfficeDeadPage()
        //MoveToFoster()
        //OficeCollectedPage()
        //OfficeHomePage()
        //MissingDogsPage()
        // DonationDone()
        //DonationPage()
        // DonatePage()
        //MissingPetListPage()
        //PetFoundPage()
        //ReportInjuredPage()
        //ReportCatogoryPage()
       //ReportAnimalIssuePge()
        //UserHomePage(),
        //OtpVerifiedPage(),
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
