import 'dart:async';

import 'package:grohe_app/models/location.dart';
import 'package:grohe_app/providers/api/home/index.dart';

class HomeRepository {
  Locations? _locations;

  Future<Locations> getLocations() async {
    _locations ??= await HomeApi.getLocations();
    return await HomeApi.getLocations();
  }
}
