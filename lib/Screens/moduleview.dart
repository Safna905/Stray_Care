import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

import '../Connection/connection.dart';
import '../widgets/sizedbox.dart';
import '../widgets/text.dart';

class ModuleView extends StatefulWidget {
  ModuleView({Key? key, required this.type}) : super(key: key);
  var type;
  @override
  State<ModuleView> createState() => _ModuleViewState();
}

class _ModuleViewState extends State<ModuleView> {
  var flag = 0;
  Future View() async {
    var data = {"Type": widget.type};
    var response =
        await post(Uri.parse('${Con.url}authorityview.php'), body: data);

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

  Future<void> _showMyDialog(BuildContext context, String phone) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // Dialog will not close when tapped outside
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Call Reporter'),
          content: Text('Reporter Number : ${phone}'),
          actions: <Widget>[
            TextButton(
              child: Text('close'),
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
        toolbarHeight: 112.h,
        title: text('${widget.type.toUpperCase()} ANIMALS', 17.sp, Colors.white,
            FontWeight.w600),
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
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/Rectangle 202.png',
          ),
          fit: BoxFit.fill,
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sbh10,
              //search bar
              // Container(
              //   height: 53.h,
              //   width: 310.w,
              //   decoration: BoxDecoration(
              //       color: Color(0XFFFFFFFF).withOpacity(0.45),
              //       borderRadius: BorderRadius.circular(8.r),
              //       border: Border.all()),
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(
              //         horizontal: 25.w, vertical: 10.h),
              //     child: Row(
              //       children: [
              //         Text(
              //           'search',
              //           style: TextStyle(
              //             color: Color(0xFFBDC3C7),
              //             fontWeight: FontWeight.w600,
              //             fontSize: 20.sp,
              //           ),
              //         ),
              //         SizedBox(width: 150.w),
              //         Icon(
              //           Icons.search,
              //           size: MediaQuery.of(context).size.width * 0.09,
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              //sbh10,
              Container(
                height: 600.h,
                child: FutureBuilder(
                    future: View(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        print(snapshot.error);
                      }

                      return flag == 1
                          ? ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 20.h),
                                  child: Card(
                                    elevation: 5,
                                    shadowColor: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.0.w, bottom: 10.h),
                                          child: Text(
                                            'Reporter Name : ${snapshot.data[index]["ReporterName"]}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        // Padding(
                                        //   padding: EdgeInsets.only(left: 20.0.w,
                                        //       bottom: 10.h),
                                        //   child: Text('Location :',
                                        //     style: TextStyle(
                                        //       fontWeight: FontWeight.w600,
                                        //       fontSize: 15.sp,
                                        //       color: Colors.black,
                                        //     ),),
                                        // ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.0.w, bottom: 10.h),
                                          child: Text(
                                            'Reported Time: ${snapshot.data[index]["reportedDate"]}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 202.h,
                                          width: 119.w,
                                          child: Image(
                                            fit: BoxFit.fitHeight,
                                            image: NetworkImage(
                                                '${Con.url}/ReportingCase/${snapshot.data[index]["image"]}'),
                                          ),
                                        ),
                                        Center(
                                          child: Container(
                                            //height: 138.h,
                                            width: 321.w,
                                            //olor: Color(0xFFD9D9D9).withOpacity(0.51),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                '${snapshot.data[index]["description"]}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15.sp,
                                                  color: Colors.black,
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 2.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "${snapshot.data[index]['location']}",
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            sizedbox(0.0, 20.0),
                                            IconButton(
                                              onPressed: () {
                                                showBottomSheet(
                                                    context: context,
                                                    backgroundColor:
                                                        Color(0xFFFFCE56),
                                                    builder:
                                                        (BuildContext context) {
                                                      return SizedBox(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        child: Wrap(
                                                          children: [
                                                            ListTile(
                                                              leading: Icon(
                                                                  Icons.phone),
                                                              title: Text(
                                                                  "Call Reporter"),
                                                              onTap: () {
                                                                _showMyDialog(
                                                                    context,
                                                                    '${snapshot.data[index]["MobNum"]}');
                                                              },
                                                            ),
                                                            ListTile(
                                                              leading: Icon(
                                                                  Icons.phone),
                                                              title: Text(
                                                                  "Call Strayare Office"),
                                                              onTap: () {},
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    });
                                              },
                                              icon: Icon(
                                                Icons.phone,
                                                color: Color(0xFFFFCE56),
                                              ),
                                            ),
                                            sizedbox(0.0, 20.0),
                                          ],
                                        ),
                                        sbh10,
                                      ],
                                    ),
                                  ),
                                );
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
    );
  }
}
