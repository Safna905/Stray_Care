import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:straycare/widgets/textfield.dart';
import 'package:straycare/widgets/widgets.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Android Large - 2.png'),
            fit:BoxFit.cover,
          )

        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [

              Container(

              ),
              sizedbox(20.0, .0),
              getTextField("text",Colors.redAccent,Colors.black,10.0,20.0),
              sizedbox(20.0, .0),
              getTextField("text",Colors.redAccent,Colors.black,10.0,20.0),
              sizedbox(20.0, .0),
              getTextField("text",Colors.redAccent,Colors.black,10.0,20.0),
              sizedbox(20.0, .0),
              getTextField("text",Colors.redAccent,Colors.black,10.0,20.0),
              sizedbox(20.0, .0),

            ],),
          ),
        ),
      ),
    );
  }
}
