import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

import '../Connection/connection.dart';
import '../widgets/text.dart';
import 'collectiondetails.dart';


class OfficeFosteringPage extends StatefulWidget {
  const OfficeFosteringPage({Key? key}) : super(key: key);

  @override
  State<OfficeFosteringPage> createState() => _OfficeFosteringPageState();
}

class _OfficeFosteringPageState extends State<OfficeFosteringPage> {
  var flag = 0;
  TextEditingController deathreasonctr = TextEditingController();
  TextEditingController deathdatectr = TextEditingController();

  Future View() async {
    var response = await post(Uri.parse('${Con.url}fosterview.php'));

    print(response.statusCode);
    print(jsonDecode(response.body));

    if (response.statusCode == 200) {
      flag = 1;
      return json.decode(response.body);
    }
  }

  Future<void> _showMyDialog(BuildContext context, String cid) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // Dialog will not close when tapped outside
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Death confirmation'),
          content: Text('Are you sure the animal is dead ?'),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: Text('yes'),
                  onPressed: () {
                  print("yes");
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                          content:   SizedBox(
                             width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              children: [
                                TextField(
                                  controller : deathreasonctr,
                                  decoration: InputDecoration(
                                  labelText: "Enter death reason : ",
                                  ),

                              ),
                              TextField(
                                controller: deathdatectr,
                                decoration: InputDecoration(
                                labelText: "Enter death date : "
                              ),
                              onTap: pickdate,
                              ),
                                TextButton(
                                  onPressed: () {
                                  update(cid);
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                   },
                                child:Text('Exit'))
                              ],
                              ),
                              )

                    );
                  });


                  },
                ),
                TextButton(
                  child: Text('No'),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              ],
            ),

          ],
        );
      },
    );
  }
  
  Future update(String cid,) async {
    var data = {"CollectID" : cid,
    "DeathReason" :deathreasonctr.text,
    "DeathDate" : deathdatectr.text
    };
    
    var response =  await post(Uri.parse('${Con.url}deathupdate.php'), body: data);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Table Updated....")));
  }

  Future<DateTime?> pickdate() async {
    DateTime? pickedDate;
    pickedDate = await showDatePicker(
      context: (context),
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      deathdatectr.text = formattedDate;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 112.h,
        title: text('Fostering Animals', 20.sp, Colors.white, FontWeight.w600),
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
                            return Column(
                              children: [
                                InkWell(
                                  child:SizedBox(
                                        height: 102.h,
                                        width: 119.w,
                                        child: Image(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              '${Con.url}/CollectedCase/${snapshot.data[index]["Image"]}'),
                                        ),
                                      ),


                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CollectionDetailPage(
                                                    gender: snapshot.data[index]["Gender"],
                                                    color: snapshot.data[index]["Color"],
                                                    type: snapshot.data[index]["Type"],
                                                    healthCondition:
                                                    snapshot.data[index]["HealthCond"],
                                                    collectedFrom:
                                                    snapshot.data[index]["CollectedFrom"],
                                                    collectedOn: snapshot.data[index]["CollectedDate"],
                                                    image: snapshot.data[index]["Image"])));
                                  },
                                ),
                                IconButton(
                                  onPressed: () {
                                    _showMyDialog(context, "${snapshot.data[index]['CollectID']}");
                                    print("${snapshot.data[index]['CollectID']}");
                                  },
                                  icon:Icon(Icons.more_horiz_rounded,
                                    color:Color(0xFFFFCE56) ,),),
                              ],
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
