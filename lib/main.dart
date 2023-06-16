import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:straycare/Screens/donate.dart';
import 'package:straycare/Screens/welcome.dart';

import 'Screens/adopt.dart';
import 'Screens/adoptview.dart';
import 'Screens/donation.dart';
import 'Screens/find.dart';
import 'Screens/missing_pet_list.dart';
import 'Screens/officeadopt.dart';
import 'Screens/pet_found.dart';
import 'Screens/report-injured.dart';
import 'Screens/report_animal_issue.dart';
import 'Screens/reportcatogory.dart';
import 'Screens/screenone.dart';
import 'Screens/signincatogories.dart';
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
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              textTheme: GoogleFonts.interTextTheme(
                Theme.of(context).textTheme,
              ),
              appBarTheme: AppBarTheme(
                backgroundColor: Color(0xFFFFCE56),
              ),
              bottomAppBarTheme: BottomAppBarTheme(
                color: Color(0xFFFFCE56),
              )),
          home:
          SignUpPage()
          //WelcomePage()
          //MissingPetListPage(),

          //ReportAnimalIssuePge()
          //AdoptViewPage()
          //SigninCatogoriesPage()
          // OfficeAdoptPage()
          //ReportPetMissingPage()

          //ModuleView()
          //DeathReasonPage()
          //FosteringDetailPage()
          //OfficeFosteringPage()

          //DeadDetailsPage()
          //OfficeDeadPage()
          //MoveToFoster()
          //OficeCollectedPage()
          //OfficeHomePage()
          //MissingDogsPage()
          // DonationDone()


          //OtpVerifiedPage(),
          //ScreenTwo(),
          //ScreenOne(),
          ),
      designSize: const Size(360, 800),
    );
  }
}
