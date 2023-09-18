import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:straycare/widgets/sizedbox.dart';
import 'package:straycare/widgets/text.dart';
import 'package:straycare/widgets/textfield.dart';

import '../Connection/connection.dart';

class MissingDetailPage extends StatefulWidget {
  MissingDetailPage(
      {Key? key,
      required this.catogory,
      required this.breed,
      required this.color,
      required this.gender,
      required this.missing_from,
      required this.lastseen_on,
      required this.health_cond,
      required this.desc,
      required this.name,
      required this.image,
      required this.misID})
      : super(key: key);

  var catogory;
  var breed, color, gender, missing_from, lastseen_on, health_cond;
  var desc, name, image, misID;

  @override
  State<MissingDetailPage> createState() => _MissingDetailPageState();
}

class _MissingDetailPageState extends State<MissingDetailPage> {
  Future update() async {
    var data = {"misID": widget.misID};

    var response =
        await post(Uri.parse('${Con.url}foundupdate.php'), body: data);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Table Updated......")));
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // Dialog will not close when tapped outside
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pet Found'),
          content: Text('Are you sure ?'),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                update();
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 122.h,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              sbh30,
              Center(
                  child: Image(
                image: NetworkImage('${Con.url}/missingCase/${widget.image}'),
              )),
              text('${widget.name.toUpperCase()}', 15.sp, Colors.black,
                  FontWeight.w600),
              sbh30,
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text('Catogory :${widget.catogory}', 15.sp, Colors.black,
                        FontWeight.w400),
                    text('Breed :${widget.breed}', 15.sp, Colors.black,
                        FontWeight.w400),
                    text('Color :${widget.color}', 15.sp, Colors.black,
                        FontWeight.w400),
                    text('Gender :${widget.gender}', 15.sp, Colors.black,
                        FontWeight.w400),
                    text('Missing from :${widget.missing_from}', 15.sp,
                        Colors.black, FontWeight.w400),
                    text('Lastseen on :${widget.lastseen_on}', 15.sp,
                        Colors.black, FontWeight.w400),
                    text('Health condition :${widget.health_cond}', 15.sp,
                        Colors.black, FontWeight.w400),
                  ],
                ),
              ),
              sbh30,
              Container(
                height: 101.h,
                width: 229.w,
                decoration: BoxDecoration(
                  color: Color(0xFF411619).withOpacity(.32),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0.h),
                  child: text('Description :${widget.desc}', 14.sp,
                      Colors.black, FontWeight.w400),
                ),
              ),
              sbh30,
              SizedBox(
                width: 142.w,
                height: 40.h,
                child: TextButton(
                  onPressed: () {
                    _showMyDialog(context);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF20614A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r))),
                  child: Text(
                    'FOUND',
                    style: TextStyle(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
