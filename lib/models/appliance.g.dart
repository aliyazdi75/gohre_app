// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appliance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Appliance> _$applianceSerializer = new _$ApplianceSerializer();
Serializer<Data> _$dataSerializer = new _$DataSerializer();
Serializer<Measurement> _$measurementSerializer = new _$MeasurementSerializer();

class _$ApplianceSerializer implements StructuredSerializer<Appliance> {
  @override
  final Iterable<Type> types = const [Appliance, _$Appliance];
  @override
  final String wireName = 'Appliance';

  @override
  Iterable<Object?> serialize(Serializers serializers, Appliance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'appliance_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'data_latest',
      serializers.serialize(object.data, specifiedType: const FullType(Data)),
    ];

    return result;
  }

  @override
  Appliance deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplianceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appliance_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data_latest':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(Data))! as Data);
          break;
      }
    }

    return result.build();
  }
}

class _$DataSerializer implements StructuredSerializer<Data> {
  @override
  final Iterable<Type> types = const [Data, _$Data];
  @override
  final String wireName = 'Data';

  @override
  Iterable<Object?> serialize(Serializers serializers, Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'measurement',
      serializers.serialize(object.measurement,
          specifiedType: const FullType(Measurement)),
    ];

    return result;
  }

  @override
  Data deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'measurement':
          result.measurement.replace(serializers.deserialize(value,
              specifiedType: const FullType(Measurement))! as Measurement);
          break;
      }
    }

    return result.build();
  }
}

class _$MeasurementSerializer implements StructuredSerializer<Measurement> {
  @override
  final Iterable<Type> types = const [Measurement, _$Measurement];
  @override
  final String wireName = 'Measurement';

  @override
  Iterable<Object?> serialize(Serializers serializers, Measurement object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'remaining_co2',
      serializers.serialize(object.remainingCO2,
          specifiedType: const FullType(int)),
      'remaining_filter',
      serializers.serialize(object.remainingFilter,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Measurement deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeasurementBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'remaining_co2':
          result.remainingCO2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'remaining_filter':
          result.remainingFilter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Appliance extends Appliance {
  @override
  final String id;
  @override
  final String name;
  @override
  final Data data;

  factory _$Appliance([void Function(ApplianceBuilder)? updates]) =>
      (new ApplianceBuilder()..update(updates)).build();

  _$Appliance._({required this.id, required this.name, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Appliance', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Appliance', 'name');
    BuiltValueNullFieldError.checkNotNull(data, 'Appliance', 'data');
  }

  @override
  Appliance rebuild(void Function(ApplianceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplianceBuilder toBuilder() => new ApplianceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Appliance &&
        id == other.id &&
        name == other.name &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Appliance')
          ..add('id', id)
          ..add('name', name)
          ..add('data', data))
        .toString();
  }
}

class ApplianceBuilder implements Builder<Appliance, ApplianceBuilder> {
  _$Appliance? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DataBuilder? _data;
  DataBuilder get data => _$this._data ??= new DataBuilder();
  set data(DataBuilder? data) => _$this._data = data;

  ApplianceBuilder();

  ApplianceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Appliance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Appliance;
  }

  @override
  void update(void Function(ApplianceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Appliance build() {
    _$Appliance _$result;
    try {
      _$result = _$v ??
          new _$Appliance._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Appliance', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Appliance', 'name'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Appliance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Data extends Data {
  @override
  final Measurement measurement;

  factory _$Data([void Function(DataBuilder)? updates]) =>
      (new DataBuilder()..update(updates)).build();

  _$Data._({required this.measurement}) : super._() {
    BuiltValueNullFieldError.checkNotNull(measurement, 'Data', 'measurement');
  }

  @override
  Data rebuild(void Function(DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataBuilder toBuilder() => new DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Data && measurement == other.measurement;
  }

  @override
  int get hashCode {
    return $jf($jc(0, measurement.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Data')
          ..add('measurement', measurement))
        .toString();
  }
}

class DataBuilder implements Builder<Data, DataBuilder> {
  _$Data? _$v;

  MeasurementBuilder? _measurement;
  MeasurementBuilder get measurement =>
      _$this._measurement ??= new MeasurementBuilder();
  set measurement(MeasurementBuilder? measurement) =>
      _$this._measurement = measurement;

  DataBuilder();

  DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _measurement = $v.measurement.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Data;
  }

  @override
  void update(void Function(DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Data build() {
    _$Data _$result;
    try {
      _$result = _$v ?? new _$Data._(measurement: measurement.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'measurement';
        measurement.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Measurement extends Measurement {
  @override
  final int remainingCO2;
  @override
  final int remainingFilter;

  factory _$Measurement([void Function(MeasurementBuilder)? updates]) =>
      (new MeasurementBuilder()..update(updates)).build();

  _$Measurement._({required this.remainingCO2, required this.remainingFilter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        remainingCO2, 'Measurement', 'remainingCO2');
    BuiltValueNullFieldError.checkNotNull(
        remainingFilter, 'Measurement', 'remainingFilter');
  }

  @override
  Measurement rebuild(void Function(MeasurementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeasurementBuilder toBuilder() => new MeasurementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Measurement &&
        remainingCO2 == other.remainingCO2 &&
        remainingFilter == other.remainingFilter;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, remainingCO2.hashCode), remainingFilter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Measurement')
          ..add('remainingCO2', remainingCO2)
          ..add('remainingFilter', remainingFilter))
        .toString();
  }
}

class MeasurementBuilder implements Builder<Measurement, MeasurementBuilder> {
  _$Measurement? _$v;

  int? _remainingCO2;
  int? get remainingCO2 => _$this._remainingCO2;
  set remainingCO2(int? remainingCO2) => _$this._remainingCO2 = remainingCO2;

  int? _remainingFilter;
  int? get remainingFilter => _$this._remainingFilter;
  set remainingFilter(int? remainingFilter) =>
      _$this._remainingFilter = remainingFilter;

  MeasurementBuilder();

  MeasurementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _remainingCO2 = $v.remainingCO2;
      _remainingFilter = $v.remainingFilter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Measurement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Measurement;
  }

  @override
  void update(void Function(MeasurementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Measurement build() {
    final _$result = _$v ??
        new _$Measurement._(
            remainingCO2: BuiltValueNullFieldError.checkNotNull(
                remainingCO2, 'Measurement', 'remainingCO2'),
            remainingFilter: BuiltValueNullFieldError.checkNotNull(
                remainingFilter, 'Measurement', 'remainingFilter'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
