import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs.freezed.dart';

enum DogType { pittie, shiba }

@immutable
class DogState {}

final dogStateProvider =
    StateNotifierProvider.family<DogStateNotifier, DogState, DogType>(
        (ref, type) {
  if (type == DogType.pittie) {
    return PittieNotifier();
  } else {
    return ShibaNotifier();
  }
});

class DogStateNotifier extends StateNotifier<DogState> {
  DogStateNotifier() : super(DogState());
}

class PittieNotifier extends DogStateNotifier {
  PittieNotifier() : super();
}

class ShibaNotifier extends DogStateNotifier {
  ShibaNotifier() : super();
}
