import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {

  Widget getbutton({required String text, required String bttntext, required String image}) {
    return Container(
      height: 196.h,
      width: 327.w,
      decoration: BoxDecoration(
           borderRadius:BorderRadius.circular(30.r),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h,),
          SizedBox(
            height: 32.h,
            width: 111.w,
            child: ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFFFFF),
                ),
                child:Text(bttntext,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),) ),
          ),
        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 92.h,
        leading: Icon(
          Icons.menu,
          size: MediaQuery.of(context).size.width
              * 0.1,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 12.h,
              bottom: 12.h,
              right: 20.h,
            ),
            child: Image.asset(
              'assets/images/Rectangle_28-removebg-preview.png',
              height: 94.h,
              width: 78.w,
            ),
          ),
        ],
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFFFFFFF),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 30.h,),
              getbutton(text: 'REPORTING ANIMAL ISSUES',
              bttntext: 'REPORT',
              image: 'assets/images/Rectangle 219.png'),

              SizedBox(height: 30.h,),
              getbutton(text: 'FOUND YOUR PET',
              bttntext: 'FIND',
              image: 'assets/images/Rectangle 220.png'),

              SizedBox(height: 30.h,),
              getbutton(text: 'ADOPT OR SPONSOR A STRAY ANIMAL',
              bttntext: 'ADOPT',
              image: 'assets/images/Rectangle 233.png'),

              SizedBox(height: 30.h,),
              getbutton(text: 'HELP US MORE LIVES DONATE TODAY',
                  bttntext: 'DONATE',
              image: 'assets/images/Rectangle 220 (1).png'),

            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.person_2), title: Text("User profile",
            style: GoogleFonts.koHo(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
              ),
            )
        ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_none), title: Text("Notifications",
                style: GoogleFonts.koHo(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                )
            ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit), title: Text("About us",
                style: GoogleFonts.koHo(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                )
            ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }
}
