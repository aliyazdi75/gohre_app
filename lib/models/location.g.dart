// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Locations> _$locationsSerializer = new _$LocationsSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$LocationsSerializer implements StructuredSerializer<Locations> {
  @override
  final Iterable<Type> types = const [Locations, _$Locations];
  @override
  final String wireName = 'Locations';

  @override
  Iterable<Object?> serialize(Serializers serializers, Locations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'locations',
      serializers.serialize(object.locations,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Location)])),
    ];

    return result;
  }

  @override
  Locations deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'locations':
          result.locations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Location)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'rooms',
      serializers.serialize(object.rooms,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Room)])),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rooms':
          result.rooms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Room)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Locations extends Locations {
  @override
  final BuiltList<Location> locations;

  factory _$Locations([void Function(LocationsBuilder)? updates]) =>
      (new LocationsBuilder()..update(updates)).build();

  _$Locations._({required this.locations}) : super._() {
    BuiltValueNullFieldError.checkNotNull(locations, 'Locations', 'locations');
  }

  @override
  Locations rebuild(void Function(LocationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationsBuilder toBuilder() => new LocationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Locations && locations == other.locations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, locations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Locations')
          ..add('locations', locations))
        .toString();
  }
}

class LocationsBuilder implements Builder<Locations, LocationsBuilder> {
  _$Locations? _$v;

  ListBuilder<Location>? _locations;
  ListBuilder<Location> get locations =>
      _$this._locations ??= new ListBuilder<Location>();
  set locations(ListBuilder<Location>? locations) =>
      _$this._locations = locations;

  LocationsBuilder();

  LocationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locations = $v.locations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Locations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Locations;
  }

  @override
  void update(void Function(LocationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Locations build() {
    _$Locations _$result;
    try {
      _$result = _$v ?? new _$Locations._(locations: locations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locations';
        locations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Locations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<Room> rooms;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._({required this.id, required this.name, required this.rooms})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Location', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Location', 'name');
    BuiltValueNullFieldError.checkNotNull(rooms, 'Location', 'rooms');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        id == other.id &&
        name == other.name &&
        rooms == other.rooms;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), rooms.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('id', id)
          ..add('name', name)
          ..add('rooms', rooms))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<Room>? _rooms;
  ListBuilder<Room> get rooms => _$this._rooms ??= new ListBuilder<Room>();
  set rooms(ListBuilder<Room>? rooms) => _$this._rooms = rooms;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _rooms = $v.rooms.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    _$Location _$result;
    try {
      _$result = _$v ??
          new _$Location._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Location', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Location', 'name'),
              rooms: rooms.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rooms';
        rooms.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
