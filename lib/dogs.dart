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
    extends StateNotifier<List<DogStateType>> {
  DogStateNotifier() : super([]);
}

class PittieNotifier extends DogStateNotifier<PittieState> {
  PittieNotifier() : super();
  goTime() {
    state = state.first.copyWith(meals: state.first.meals! + 1);
  }
}

class ShibaNotifier extends DogStateNotifier {
  ShibaNotifier() : super();
}
