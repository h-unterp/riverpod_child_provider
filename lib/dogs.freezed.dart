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
  String get setMe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DogStateCopyWith<DogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogStateCopyWith<$Res> {
  factory $DogStateCopyWith(DogState value, $Res Function(DogState) then) =
      _$DogStateCopyWithImpl<$Res>;
  $Res call({String setMe});
}

/// @nodoc
class _$DogStateCopyWithImpl<$Res> implements $DogStateCopyWith<$Res> {
  _$DogStateCopyWithImpl(this._value, this._then);

  final DogState _value;
  // ignore: unused_field
  final $Res Function(DogState) _then;

  @override
  $Res call({
    Object? setMe = freezed,
  }) {
    return _then(_value.copyWith(
      setMe: setMe == freezed
          ? _value.setMe
          : setMe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DogStateCopyWith<$Res> implements $DogStateCopyWith<$Res> {
  factory _$$_DogStateCopyWith(
          _$_DogState value, $Res Function(_$_DogState) then) =
      __$$_DogStateCopyWithImpl<$Res>;
  @override
  $Res call({String setMe});
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
    Object? setMe = freezed,
  }) {
    return _then(_$_DogState(
      setMe == freezed
          ? _value.setMe
          : setMe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DogState implements _DogState {
  const _$_DogState(this.setMe);

  @override
  final String setMe;

  @override
  String toString() {
    return 'DogState(setMe: $setMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DogState &&
            const DeepCollectionEquality().equals(other.setMe, setMe));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(setMe));

  @JsonKey(ignore: true)
  @override
  _$$_DogStateCopyWith<_$_DogState> get copyWith =>
      __$$_DogStateCopyWithImpl<_$_DogState>(this, _$identity);
}

abstract class _DogState implements DogState {
  const factory _DogState(final String setMe) = _$_DogState;

  @override
  String get setMe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DogStateCopyWith<_$_DogState> get copyWith =>
      throw _privateConstructorUsedError;
}
