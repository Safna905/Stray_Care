import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

import '../Connection/connection.dart';
import '../widgets/sizedbox.dart';
import '../widgets/text.dart';

class LsgViewPage extends StatelessWidget {
  LsgViewPage({Key? key}) : super(key: key);

  var flag = 0;
  Future View() async {
    var data = {"Type": "aggressive"};
    var response =
    await post(Uri.parse('${Con.url}lsgview.php'), body: data);

    print(response.statusCode);
    print(jsonDecode(response.body));
    // print(jsonDecode(response.body)["result"]);
    // var jsondata=jsonDecode(response.body);
    if (response.statusCode == 200) {
      //   if(jsonDecode(response.body)['result'] == "Success") {
      // //   var path =  await get(Uri.parse('${Con.url}missingview.php/missingCase'));
      //     print('recieved');
      flag = 1;
      return json.decode(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 112.h,
        title: text('Aggressive Animals', 20.sp, Colors.white, FontWeight.w600),
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
        color: Color(0xFFFFCE56),
        child: Padding(
          padding: EdgeInsets.only(bottom: 53.h),
          child: Container(
            height: 622.h,
            width: 360.w,
            color: Color(0xFFFFFFFF),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  sbh30,
                  //search bar
                  Container(
                    height: 53.h,
                    width: 310.w,
                    decoration: BoxDecoration(
                        color: Color(0XFFFFFFFF).withOpacity(0.45),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all()),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 10.h),
                      child: Row(
                        children: [
                          Text(
                            'search',
                            style: TextStyle(
                              color: Color(0xFFBDC3C7),
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
                  sbh30,
                  Container(
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
                                  crossAxisSpacing: 20.0,
                                  mainAxisSpacing: 20.0,
                                  childAspectRatio: 1.0
                              ),
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: 102.h,
                                    width: 119.w,
                                    child: Image(
                                      image: NetworkImage(
                                          '${Con.url}/ReportingCase/${snapshot.data[index]["image"]}'),
                                    ));
                              })
                              : Center(
                            child: CircularProgressIndicator(),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
