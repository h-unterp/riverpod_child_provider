import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs.freezed.dart';

enum DogType { pittie, shiba }

@immutable
abstract class DogState {
  final bool? collar;
  const DogState({this.collar});
}

class PittieState extends DogState {
  final int? meals;
  const PittieState({bool? collar, this.meals}) : super(collar: collar);

  copyWith({bool? collar, int? meals}) {
    return PittieState(collar: collar, meals: meals);
  }
}

class ShibaState extends DogState {
  final bool? quiet;
  const ShibaState({bool? collar, this.quiet}) : super(collar: collar);

  copyWith({bool? collar, bool? quiet}) {
    return ShibaState(collar: collar, quiet: quiet);
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

abstract class DogStateNotifier<DogStateType extends DogState>
    extends StateNotifier<DogStateType> {
  DogStateNotifier(DogStateType state) : super(state);
}

class PittieNotifier extends DogStateNotifier<PittieState> {
  PittieNotifier() : super(const PittieState(collar: null, meals: null));
  goTime() {
    state = state.copyWith(meals: state.meals! + 1);
  }
}

class ShibaNotifier extends DogStateNotifier {
  ShibaNotifier() : super(const ShibaState(collar: null, quiet: null));
}
