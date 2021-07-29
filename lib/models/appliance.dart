import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'appliance.g.dart';

abstract class Appliance implements Built<Appliance, ApplianceBuilder> {
  @BuiltValueField(wireName: 'appliance_id')
  String get id;

  String get name;

  @BuiltValueField(wireName: 'data_latest')
  Data get data;

  Appliance._();
  factory Appliance([void Function(ApplianceBuilder) updates]) = _$Appliance;

  static Serializer<Appliance> get serializer => _$applianceSerializer;
}

abstract class Data implements Built<Data, DataBuilder> {
  Measurement get measurement;

  Data._();
  factory Data([void Function(DataBuilder) updates]) = _$Data;

  static Serializer<Data> get serializer => _$dataSerializer;
}

abstract class Measurement implements Built<Measurement, MeasurementBuilder> {
  @BuiltValueField(wireName: 'remaining_co2')
  int get remainingCO2;

  @BuiltValueField(wireName: 'remaining_filter')
  int get remainingFilter;

  Measurement._();
  factory Measurement([void Function(MeasurementBuilder) updates]) =
      _$Measurement;

  static Serializer<Measurement> get serializer => _$measurementSerializer;
}
