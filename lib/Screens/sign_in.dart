import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:straycare/Screens/userhome.dart';
import 'package:straycare/SharedPreferences/sharedgetdata.dart';

import '../Connection/connection.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final lightText = const Color(0xFFBDC3C7);
  final darkcolor = const Color(0xFF000000);
  final lightcolor = const Color(0xFFFFFFFF);

  var emailctr = TextEditingController();
  var passwordctr = TextEditingController();

  var name;
  var email;
  var place;
  var mob;
  var phone;
  var password;
  var logId;



  Widget getTextField(String hint, TextEditingController ctr) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(50.r),
      child: TextField(
        controller: ctr,
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
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {

    });
  }

    Future<void> signin() async {
      var data = {
        'email': emailctr.text,
        "password": passwordctr.text,
      };

      var response = await post(Uri.parse('${Con.url}userlogin.php'), body: data);
      print(response.body);
      if (jsonDecode(response.body)['result'] == 'Success') {
        name = jsonDecode(response.body)['name'];
        print(name);
        email = jsonDecode(response.body)['email'];
        place = jsonDecode(response.body)['place'];
        mob = jsonDecode(response.body)['phone'];
        password = jsonDecode(response.body)['password'];
        logId = jsonDecode(response.body)['log_id'];
        savaCredentials(name, email, place, mob, password, logId);

        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Login success....')));
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const UserHomePage()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Failed attempt !!....')));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInPage()));
      }
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
                          getTextField('Email', emailctr),
                          SizedBox(
                            height: 30.h,
                          ),
                          getTextField('Password',passwordctr),
                          SizedBox(
                            height: 30.h,
                          ),

                          //signin button
                          SizedBox(
                            height: 43.h,
                            width: 146.w,
                            child: OutlinedButton(
                                onPressed: () {

                                  if (
                                      emailctr.text.isNotEmpty &&
                                      passwordctr.text.isNotEmpty) {

                                    setState(() {

                                      signin();
                                      print('ready to add fields');
                                    });

                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'All fields required !!!....')));
                                  }
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
                            padding: EdgeInsets.all(30.0

                            ),
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
