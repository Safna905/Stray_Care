import 'package:shared_preferences/shared_preferences.dart';

Future<Map<String, String>> getCredentials() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String name = prefs.getString("Name")!;
  String email = prefs.getString("Email")!;
  String place = prefs.getString("Place")!;
  String phone = prefs.getString("Phone")!;
  String password = prefs.getString("Password")!;
  String logid = prefs.getString("Logid")!;

  return {
    "name" : name,
    "email" : email,
    "place" : place,
    "phone" : phone,
    "password" : password,
    "logid" : logid
  };
}
void savaCredentials(String name,String email,String place, String phone,String password, String logid) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("Name", name);
  prefs.setString("Email", email);
  prefs.setString("Place", place);
  prefs.setString("Phone", phone);
  prefs.setString("Password", password);
  prefs.setString("Logid", logid);
}