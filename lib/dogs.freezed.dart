// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dogs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DogState {
  List<Dog> get dogs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DogStateCopyWith<DogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogStateCopyWith<$Res> {
  factory $DogStateCopyWith(DogState value, $Res Function(DogState) then) =
      _$DogStateCopyWithImpl<$Res>;
  $Res call({List<Dog> dogs});
}

/// @nodoc
class _$DogStateCopyWithImpl<$Res> implements $DogStateCopyWith<$Res> {
  _$DogStateCopyWithImpl(this._value, this._then);

  final DogState _value;
  // ignore: unused_field
  final $Res Function(DogState) _then;

  @override
  $Res call({
    Object? dogs = freezed,
  }) {
    return _then(_value.copyWith(
      dogs: dogs == freezed
          ? _value.dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as List<Dog>,
    ));
  }
}

/// @nodoc
abstract class _$$_DogStateCopyWith<$Res> implements $DogStateCopyWith<$Res> {
  factory _$$_DogStateCopyWith(
          _$_DogState value, $Res Function(_$_DogState) then) =
      __$$_DogStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Dog> dogs});
}

/// @nodoc
class __$$_DogStateCopyWithImpl<$Res> extends _$DogStateCopyWithImpl<$Res>
    implements _$$_DogStateCopyWith<$Res> {
  __$$_DogStateCopyWithImpl(
      _$_DogState _value, $Res Function(_$_DogState) _then)
      : super(_value, (v) => _then(v as _$_DogState));

  @override
  _$_DogState get _value => super._value as _$_DogState;

  @override
  $Res call({
    Object? dogs = freezed,
  }) {
    return _then(_$_DogState(
      dogs == freezed
          ? _value._dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as List<Dog>,
    ));
  }
}

/// @nodoc

class _$_DogState implements _DogState {
  const _$_DogState(final List<Dog> dogs) : _dogs = dogs;

  final List<Dog> _dogs;
  @override
  List<Dog> get dogs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dogs);
  }

  @override
  String toString() {
    return 'DogState(dogs: $dogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DogState &&
            const DeepCollectionEquality().equals(other._dogs, _dogs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dogs));

  @JsonKey(ignore: true)
  @override
  _$$_DogStateCopyWith<_$_DogState> get copyWith =>
      __$$_DogStateCopyWithImpl<_$_DogState>(this, _$identity);
}

abstract class _DogState implements DogState {
  const factory _DogState(final List<Dog> dogs) = _$_DogState;

  @override
  List<Dog> get dogs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DogStateCopyWith<_$_DogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Dog {
  String get dogId => throw _privateConstructorUsedError;
  bool get flea => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DogCopyWith<Dog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogCopyWith<$Res> {
  factory $DogCopyWith(Dog value, $Res Function(Dog) then) =
      _$DogCopyWithImpl<$Res>;
  $Res call({String dogId, bool flea});
}

/// @nodoc
class _$DogCopyWithImpl<$Res> implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(this._value, this._then);

  final Dog _value;
  // ignore: unused_field
  final $Res Function(Dog) _then;

  @override
  $Res call({
    Object? dogId = freezed,
    Object? flea = freezed,
  }) {
    return _then(_value.copyWith(
      dogId: dogId == freezed
          ? _value.dogId
          : dogId // ignore: cast_nullable_to_non_nullable
              as String,
      flea: flea == freezed
          ? _value.flea
          : flea // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_DogCopyWith<$Res> implements $DogCopyWith<$Res> {
  factory _$$_DogCopyWith(_$_Dog value, $Res Function(_$_Dog) then) =
      __$$_DogCopyWithImpl<$Res>;
  @override
  $Res call({String dogId, bool flea});
}

/// @nodoc
class __$$_DogCopyWithImpl<$Res> extends _$DogCopyWithImpl<$Res>
    implements _$$_DogCopyWith<$Res> {
  __$$_DogCopyWithImpl(_$_Dog _value, $Res Function(_$_Dog) _then)
      : super(_value, (v) => _then(v as _$_Dog));

  @override
  _$_Dog get _value => super._value as _$_Dog;

  @override
  $Res call({
    Object? dogId = freezed,
    Object? flea = freezed,
  }) {
    return _then(_$_Dog(
      dogId == freezed
          ? _value.dogId
          : dogId // ignore: cast_nullable_to_non_nullable
              as String,
      flea == freezed
          ? _value.flea
          : flea // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Dog implements _Dog {
  const _$_Dog(this.dogId, this.flea);

  @override
  final String dogId;
  @override
  final bool flea;

  @override
  String toString() {
    return 'Dog(dogId: $dogId, flea: $flea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dog &&
            const DeepCollectionEquality().equals(other.dogId, dogId) &&
            const DeepCollectionEquality().equals(other.flea, flea));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dogId),
      const DeepCollectionEquality().hash(flea));

  @JsonKey(ignore: true)
  @override
  _$$_DogCopyWith<_$_Dog> get copyWith =>
      __$$_DogCopyWithImpl<_$_Dog>(this, _$identity);
}

abstract class _Dog implements Dog {
  const factory _Dog(final String dogId, final bool flea) = _$_Dog;

  @override
  String get dogId => throw _privateConstructorUsedError;
  @override
  bool get flea => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DogCopyWith<_$_Dog> get copyWith => throw _privateConstructorUsedError;
}
