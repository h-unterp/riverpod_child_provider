import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';

final pittieProvider = StateNotifierProvider<DogStateNotifier, DogState>((ref) {
  ref.onDispose(() {
    log("DISPOSED causes error");
  });
  return ref.watch(dogStateProvider(DogType.pittie).notifier);
});

final simplePittieProvider =
    StateNotifierProvider<DogStateNotifier, DogState>((ref) {
  ref.onDispose(() {
    log("DISPOSED SIMPLE no error");
  });
  return PittieNotifier();
});

final dogStateProvider =
    StateNotifierProvider.family<DogStateNotifier, DogState, DogType>(
        (ref, type) {
  ref.onDispose(() {
    log("DISPOSED DSP");
  });

  if (type == DogType.pittie) {
    PittieNotifier pittieNotifier = PittieNotifier();
    pittieNotifier.startDog;
    return pittieNotifier;
  } else {
    return PittieNotifier();
  }
});

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
      List<String?>? previousPageKeys})
      : super(records: records, error: error, nextPageKey: nextPageKey);

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
      List<String>? records,
      String? error,
      String? nextPageKey,
      List<String?>? previousPageKeys})
      : super(
            collar: collar,
            records: records,
            error: error,
            nextPageKey: nextPageKey,
            previousPageKeys: previousPageKeys);

  @override
  copyWith(
      {bool? collar,
      int? meals,
      List<String>? records,
      dynamic error,
      dynamic nextPageKey,
      List<String?>? previousPageKeys}) {
    final sup = super.copyWith(
        records: records,
        error: error,
        nextPageKey: nextPageKey,
        previousPageKeys: previousPageKeys);
    return PittieState(
        records: sup.records,
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

  @override
  Future<List<String>?> load(String? page, int limit) async {
    List<String>? ret;

    try {
      if (page != "haha") {
        ret = await Future.delayed(const Duration(seconds: 0), () {
          return [
            "Woof",
            "Woof1",
            "Woof2",
            "Woof3",
            "Woof4",
            "Woof5",
            "Woof6",
            "Woof7",
            "Woof8",
            "Woof9",
            "Woof10",
            "Woof11",
            "Woof12",
          ];
        });

        state = state.copyWith(
            records: [...(state.records ?? []), ...ret!],
            nextPageKey: "haha") as DogStateType;
      }
    } catch (e) {
      log("ERROR $e");
      state = state.copyWith(error: e.toString()) as DogStateType;
    }
    return ret;
  }
}

class PittieNotifier extends DogStateNotifier<PittieState> {
  PittieNotifier() : super(const PittieState(collar: null, meals: null));
  goTime(int meals) {
    state = state.copyWith(meals: meals) as PittieState;
  }
}
