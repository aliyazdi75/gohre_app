import 'dart:async';
import 'dart:math';

import 'package:grohe_app/models/location.dart';
import 'package:grohe_app/providers/api/home/index.dart';

class HomeRepository {
  late Locations _locations;

  Future<Locations> getLocations() async {
    _locations = await HomeApi.getLocations();
    return _locations;
  }

  void updateLocations({required Function(Locations newLocations) onUpdate}) {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      for (int i = 0; i < _locations.locations.length; i++) {
        for (int j = 0; j < _locations.locations[i].rooms.length; j++) {
          for (int k = 0;
              k < _locations.locations[i].rooms[j].appliances.length;
              k++) {
            _locations = _locations.rebuild((p0) => p0
              ..locations[i] = p0.locations[i].rebuild((p0) => p0
                ..rooms[j] = p0.rooms[j].rebuild((p0) => p0
                  ..appliances[k] = p0.appliances[k].rebuild(
                    (p0) => p0
                      ..data.measurement.remainingCO2 = Random().nextInt(100)
                      ..data.measurement.remainingFilter =
                          Random().nextInt(100),
                  ))));
          }
        }
      }
      onUpdate(_locations);
    });
  }
}
