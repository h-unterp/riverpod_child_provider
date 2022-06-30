import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum DogType { pittie, shiba }

/* *** State Objects ****/
@immutable
class DogState {
  final bool? collar;
  const DogState({this.collar});
  copyWith({bool? collar}) {
    return DogState(collar: collar);
  }
}

class PittieState extends DogState {
  final int? meals;
  const PittieState({bool? collar, this.meals}) : super(collar: collar);

  @override
  copyWith({bool? collar, int? meals}) {
    return PittieState(
        collar: collar ?? this.collar, meals: meals ?? this.meals);
  }
}

class ShibaState extends DogState {
  final bool? quiet;
  const ShibaState({bool? collar, this.quiet}) : super(collar: collar);

  @override
  copyWith({bool? collar, bool? quiet}) {
    return ShibaState(
        collar: collar ?? this.collar, quiet: quiet ?? this.quiet);
  }
}

/* *** Notifiers ****/
abstract class DogStateNotifier<DogStateType extends DogState>
    extends StateNotifier<DogStateType> {
  DogStateNotifier(DogStateType state) : super(state);

  startDog() {
    state = state.copyWith(collar: true) as DogStateType;
  }
}

class PittieNotifier extends DogStateNotifier<PittieState> {
  PittieNotifier() : super(const PittieState(collar: null, meals: null));
  goTime(int meals) {
    state = state.copyWith(meals: meals);
  }
}

class ShibaNotifier extends DogStateNotifier<ShibaState> {
  ShibaNotifier() : super(const ShibaState(collar: null, quiet: null));
  shibaWay(bool quiet) {
    state = state.copyWith(quiet: quiet);
  }
}

final dogStateProvider =
    StateNotifierProvider.family<DogStateNotifier, DogState, DogType>(
        (ref, type) {
  if (type == DogType.pittie) {
    return PittieNotifier();
  } else {
    return ShibaNotifier();
  }
});
