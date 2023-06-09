import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  late Position currentPosition;
  var isLoading = false.obs;

  String? currentLocation;
  var myLat;
  var myLong;

  Future<Position?> getPosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location permissions denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error("Location permissions permanently denied");
    }
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return await Geolocator.getCurrentPosition();
  }

  Future<void> getAddressFromLatLng(long, lat) async {
    try {
      List<Placemark> placemark = await placemarkFromCoordinates(lat, long);
      Placemark place = placemark[0];
      currentLocation =
          "${place.locality},${place.street},${place.subAdministrativeArea}";

      myLat = lat;
      myLong = long;
      update();
    } catch (e) {
      print(e);
    }
  }
}
