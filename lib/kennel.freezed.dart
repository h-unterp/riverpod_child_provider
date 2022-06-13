// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kennel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KennelState {
  DogStateNotifier get dogState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KennelStateCopyWith<KennelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KennelStateCopyWith<$Res> {
  factory $KennelStateCopyWith(
          KennelState value, $Res Function(KennelState) then) =
      _$KennelStateCopyWithImpl<$Res>;
  $Res call({DogStateNotifier dogState});
}

/// @nodoc
class _$KennelStateCopyWithImpl<$Res> implements $KennelStateCopyWith<$Res> {
  _$KennelStateCopyWithImpl(this._value, this._then);

  final KennelState _value;
  // ignore: unused_field
  final $Res Function(KennelState) _then;

  @override
  $Res call({
    Object? dogState = freezed,
  }) {
    return _then(_value.copyWith(
      dogState: dogState == freezed
          ? _value.dogState
          : dogState // ignore: cast_nullable_to_non_nullable
              as DogStateNotifier,
    ));
  }
}

/// @nodoc
abstract class _$$_KennelStateCopyWith<$Res>
    implements $KennelStateCopyWith<$Res> {
  factory _$$_KennelStateCopyWith(
          _$_KennelState value, $Res Function(_$_KennelState) then) =
      __$$_KennelStateCopyWithImpl<$Res>;
  @override
  $Res call({DogStateNotifier dogState});
}

/// @nodoc
class __$$_KennelStateCopyWithImpl<$Res> extends _$KennelStateCopyWithImpl<$Res>
    implements _$$_KennelStateCopyWith<$Res> {
  __$$_KennelStateCopyWithImpl(
      _$_KennelState _value, $Res Function(_$_KennelState) _then)
      : super(_value, (v) => _then(v as _$_KennelState));

  @override
  _$_KennelState get _value => super._value as _$_KennelState;

  @override
  $Res call({
    Object? dogState = freezed,
  }) {
    return _then(_$_KennelState(
      dogState == freezed
          ? _value.dogState
          : dogState // ignore: cast_nullable_to_non_nullable
              as DogStateNotifier,
    ));
  }
}

/// @nodoc

class _$_KennelState implements _KennelState {
  const _$_KennelState(this.dogState);

  @override
  final DogStateNotifier dogState;

  @override
  String toString() {
    return 'KennelState(dogState: $dogState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KennelState &&
            const DeepCollectionEquality().equals(other.dogState, dogState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dogState));

  @JsonKey(ignore: true)
  @override
  _$$_KennelStateCopyWith<_$_KennelState> get copyWith =>
      __$$_KennelStateCopyWithImpl<_$_KennelState>(this, _$identity);
}

abstract class _KennelState implements KennelState {
  const factory _KennelState(final DogStateNotifier dogState) = _$_KennelState;

  @override
  DogStateNotifier get dogState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_KennelStateCopyWith<_$_KennelState> get copyWith =>
      throw _privateConstructorUsedError;
}
