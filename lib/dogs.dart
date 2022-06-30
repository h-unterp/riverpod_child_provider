import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';

enum DogType { pittie, shiba }

/* *** State Objects ****/
@immutable
class DogState extends PagedState<String?, String> {
  final bool? collar;
  const DogState(
      {this.collar,
      List<String>? records,
      String? error,
      String? nextPageKey,
      List<String?>? previousPageKeys});

  @override
  copyWith(
      {bool? collar,
      List<String>? records,
      dynamic error,
      dynamic nextPageKey,
      List<String?>? previousPageKeys}) {
    final sup = super.copyWith(
        records: records,
        error: error,
        nextPageKey: nextPageKey,
        previousPageKeys: previousPageKeys);
    return DogState(
        collar: collar ?? this.collar,
        records: sup.records,
        error: sup.error,
        nextPageKey: sup.nextPageKey,
        previousPageKeys: sup.previousPageKeys);
  }
}

class PittieState extends DogState {
  final int? meals;
  const PittieState(
      {bool? collar,
      this.meals,
      String? error,
      String? nextPageKey,
      List<String?>? previousPageKeys})
      : super(collar: collar);

  @override
  copyWith(
      {bool? collar,
      int? meals,
      List<String>? records,
      dynamic error,
      dynamic nextPageKey,
      List<String?>? previousPageKeys}) {
    return PittieState(
        collar: collar,
        error: error,
        nextPageKey: nextPageKey,
        previousPageKeys: previousPageKeys);
  }
}

/* *** Notifiers ****/
abstract class DogStateNotifier<DogStateType extends DogState>
    extends StateNotifier<DogStateType>
    with PagedNotifierMixin<String?, String, DogStateType> {
  DogStateNotifier(DogStateType state) : super(state);

  startDog() {
    state = state.copyWith(collar: true) as DogStateType;
  }
}

class PittieNotifier extends DogStateNotifier<PittieState> {
  PittieNotifier() : super(const PittieState(collar: null, meals: null));
  goTime(int meals) {
    state = state.copyWith(meals: meals) as PittieState;
  }

  @override
  Future<List<String>?> load(String? page, int limit) {
    // TODO: implement load
    throw UnimplementedError();
  }
}

final dogStateProvider =
    StateNotifierProvider.family<DogStateNotifier, DogState, DogType>(
        (ref, type) {
  if (type == DogType.pittie) {
    PittieNotifier pittieNotifier = PittieNotifier();
    pittieNotifier.startDog;
    return pittieNotifier;
  } else {
    return PittieNotifier();
  }
});
