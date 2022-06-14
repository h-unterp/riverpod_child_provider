import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_child_provider/dogs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_child_provider/main.dart';

part 'kennel.freezed.dart';

final kennelProvider = StateNotifierProvider<Kennel, KennelState>((ref) {
  return Kennel();
});

@freezed
class KennelState with _$KennelState {
  const factory KennelState(
      StateNotifierProvider<DogStateNotifier, DogState> dog) = _KennelState;
}

class Kennel extends StateNotifier<KennelState> {
  Kennel() : super(KennelState(shibaProvider));

  void changeDog(StateNotifierProvider<DogStateNotifier, DogState> dog) {
    state = KennelState(dog);
  }
}
