import 'package:flutter/services.dart';
import 'package:grohe_app/models/location.dart';

class HomeApi {
  static Future<Locations> getLocations() async {
    final jsonStr = await rootBundle.loadString('assets/data.json');
    return Locations.fromJson(jsonStr);
  }
}
