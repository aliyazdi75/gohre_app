import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'appliance.dart';

part 'room.g.dart';

abstract class Room implements Built<Room, RoomBuilder> {
  int get id;

  String get name;

  BuiltList<Appliance> get appliances;

  Room._();
  factory Room([void Function(RoomBuilder) updates]) = _$Room;

  static Serializer<Room> get serializer => _$roomSerializer;
}
