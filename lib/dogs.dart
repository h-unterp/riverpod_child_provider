import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs.freezed.dart';

enum DogType { shiba, pittie }

@freezed
class DogState with _$DogState {
  const factory DogState(String setMe) = _DogState;
}

final dogProvider =
    StateNotifierProvider.family<DogStateNotifier, DogState, DogType>(
        (ref, type) {
  if (type == DogType.shiba) {
    return ShibaNotifier();
  } else {
    return PittieNotifier();
  }
});

abstract class DogStateNotifier extends StateNotifier<DogState> {
  DogStateNotifier(super.state);

  String produce() {
    return runtimeType.toString() + DateTime.now().toString();
  }

  setIt(String s) {
    state = state.copyWith(setMe: s);
  }
}

class ShibaNotifier extends DogStateNotifier {
  ShibaNotifier() : super(DogState("SHIBA INIT${DateTime.now()}"));
}

class PittieNotifier extends DogStateNotifier {
  PittieNotifier() : super(DogState("PITTIE INIT${DateTime.now()}"));
}
