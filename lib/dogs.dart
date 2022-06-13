import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs.freezed.dart';

enum DogType { shiba, pittie }

@freezed
class DogState with _$DogState {
  const factory DogState({DogType? dogType, String? dogMessage}) = _DogState;
}

abstract class DogStateNotifier extends StateNotifier<DogState> {
  DogStateNotifier() : super(const DogState());
  String produce() {
    return state.dogType.toString() + DateTime.now().toString();
  }
}

class Shiba extends DogStateNotifier {
  Shiba() {
    state = const DogState(dogType: DogType.shiba);
  }
}

class Pittie extends DogStateNotifier {
  Pittie() {
    state = const DogState(dogType: DogType.pittie);
  }
}
