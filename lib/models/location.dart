import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'room.dart';
import 'serializers.dart';

part 'location.g.dart';

abstract class Locations implements Built<Locations, LocationsBuilder> {
  BuiltList<Location> get locations;

  Locations._();
  factory Locations([void Function(LocationsBuilder) updates]) = _$Locations;

  static Locations fromJson(String jsonString) {
    return serializers.fromJson(Locations.serializer, jsonString)!;
  }

  static Serializer<Locations> get serializer => _$locationsSerializer;
}

abstract class Location implements Built<Location, LocationBuilder> {
  int get id;

  String get name;

  BuiltList<Room> get rooms;

  Location._();
  factory Location([void Function(LocationBuilder) updates]) = _$Location;

  static Serializer<Location> get serializer => _$locationSerializer;
}
