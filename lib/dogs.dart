import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs.freezed.dart';

enum DogType { pittie, shiba }

@immutable
class DogState {
  final String? flea;
  const DogState({this.flea});

  copyWith(String flea) {
    return DogState(flea: flea);
  }
}

class PittieState extends DogState {
  final int? meals;
  const PittieState({String? flea, this.meals}) : super(flea: flea);
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

class DogStateNotifier<DogType extends DogState>
    extends StateNotifier<DogState> {
  DogStateNotifier() : super(const DogState());
}

class PittieNotifier extends DogStateNotifier<PittieState> {
  PittieNotifier() : super();
  goTime() {
    state = state.copyWith(flea: 'flea');
  }
}

class ShibaNotifier extends DogStateNotifier {
  ShibaNotifier() : super();
}
