import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

import '../Connection/connection.dart';
import '../widgets/text.dart';

import 'deaddetails.dart';

class OfficeDeadPage extends StatefulWidget {
  const OfficeDeadPage({Key? key}) : super(key: key);

  @override
  State<OfficeDeadPage> createState() => _OfficeDeadPageState();
}

class _OfficeDeadPageState extends State<OfficeDeadPage> {
  var flag = 0;

  Future View() async {
    var response = await post(Uri.parse('${Con.url}deadview.php'));

    print(response.statusCode);
    print(jsonDecode(response.body));

    if (response.statusCode == 200) {
      flag = 1;
      return json.decode(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 112.h,
        title: text('Dead Animals', 20.sp, Colors.white, FontWeight.w600),
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
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/lightbg.png',
            ),
            fit: BoxFit.fill,
          )),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //search bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 32.h),
                child: Container(
                  height: 53.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF).withOpacity(0.45),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                    child: Row(
                      children: [
                        Text(
                          'search',
                          style: TextStyle(
                            color: const Color(0xFFBDC3C7),
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(width: 150.w),
                        Icon(
                          Icons.search,
                          size: MediaQuery.of(context).size.width * 0.09,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 500.h,
                child: FutureBuilder(
                    future: View(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        print(snapshot.error);
                      }
                      return flag == 1
                          ? GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 20.0,
                              ),
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: SizedBox(
                                      height: 102.h,
                                      width: 119.w,
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            '${Con.url}/CollectedCase/${snapshot.data[index]["Image"]}'),
                                      )),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DeadDetailsPage(
                                                    gender: snapshot.data[index]
                                                        ["Gender"],
                                                    color: snapshot.data[index]
                                                        ["Color"],
                                                    type: snapshot.data[index]
                                                        ["Type"],
                                                    healthCondition:
                                                        snapshot.data[index]
                                                            ["HealthCond"],
                                                    collectedFrom:
                                                        snapshot.data[index]
                                                            ["CollectedFrom"],
                                                    collectedOn:
                                                        snapshot.data[index]
                                                            ["CollectedDate"],
                                                    deathReason: snapshot.data[index]["DeathReason"],
                                                    deathDate: snapshot.data[index]["DeathDate"],
                                                    image: snapshot.data[index]
                                                        ["Image"])));
                                  },
                                );
                              })
                          : const Center(
                              child: CircularProgressIndicator(),
                            );
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
