// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Room> _$roomSerializer = new _$RoomSerializer();

class _$RoomSerializer implements StructuredSerializer<Room> {
  @override
  final Iterable<Type> types = const [Room, _$Room];
  @override
  final String wireName = 'Room';

  @override
  Iterable<Object?> serialize(Serializers serializers, Room object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'appliances',
      serializers.serialize(object.appliances,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Appliance)])),
    ];

    return result;
  }

  @override
  Room deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoomBuilder();

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
        case 'appliances':
          result.appliances.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Appliance)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Room extends Room {
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<Appliance> appliances;

  factory _$Room([void Function(RoomBuilder)? updates]) =>
      (new RoomBuilder()..update(updates)).build();

  _$Room._({required this.id, required this.name, required this.appliances})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Room', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Room', 'name');
    BuiltValueNullFieldError.checkNotNull(appliances, 'Room', 'appliances');
  }

  @override
  Room rebuild(void Function(RoomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomBuilder toBuilder() => new RoomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Room &&
        id == other.id &&
        name == other.name &&
        appliances == other.appliances;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), appliances.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Room')
          ..add('id', id)
          ..add('name', name)
          ..add('appliances', appliances))
        .toString();
  }
}

class RoomBuilder implements Builder<Room, RoomBuilder> {
  _$Room? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<Appliance>? _appliances;
  ListBuilder<Appliance> get appliances =>
      _$this._appliances ??= new ListBuilder<Appliance>();
  set appliances(ListBuilder<Appliance>? appliances) =>
      _$this._appliances = appliances;

  RoomBuilder();

  RoomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _appliances = $v.appliances.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Room other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Room;
  }

  @override
  void update(void Function(RoomBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Room build() {
    _$Room _$result;
    try {
      _$result = _$v ??
          new _$Room._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Room', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name, 'Room', 'name'),
              appliances: appliances.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appliances';
        appliances.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Room', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
