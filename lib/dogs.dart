import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs.freezed.dart';

enum DogType { shiba, pittie }

@freezed
class DogState with _$DogState {
  const factory DogState({DogType? dogType, String? dogMessage}) = _DogState;
}

final dogProvider =
    StateNotifierProvider.family<DogStateNotifier, DogState, DogType>(
        (ref, type) {
  switch (type) {
    case DogType.shiba:
      return ShibaNotifier();

    case DogType.pittie:
      return PittieNotifier();
  }
});

abstract class DogStateNotifier extends StateNotifier<DogState> {
  DogStateNotifier(super.state);

  String produce() {
    return state.dogType.toString() + DateTime.now().toString();
  }
}

class ShibaNotifier extends DogStateNotifier {
  ShibaNotifier() : super(const DogState(dogType: DogType.shiba));
}

class PittieNotifier extends DogStateNotifier {
  PittieNotifier() : super(const DogState(dogType: DogType.pittie));
}
