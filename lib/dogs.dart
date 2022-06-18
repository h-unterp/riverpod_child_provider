import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs.freezed.dart';

@freezed
class DogState with _$DogState {
  const factory DogState(List<Dog> dogs) = _DogState;
}

@freezed
class Dog with _$Dog {
  const factory Dog(String dogId, bool flea) = _Dog;
}

final dogStateProvider =
    StateNotifierProvider<DogStateNotifier, DogState>((ref) {
  return DogStateNotifier();
});

final dogProvider = Provider.family<Dog?, String>((ref, id) {
  return ref.watch(dogStateProvider.notifier).getDog(id);
});

final fleaProvider = Provider.family<String, String>((ref, id) {
  return ref.watch(dogStateProvider.notifier).getDog(id)!.flea.toString();
});

class DogStateNotifier extends StateNotifier<DogState> {
  DogStateNotifier() : super(const DogState([Dog("one", false)]));

  setDog(Dog d) {
    int idx = state.dogs.indexWhere((x) => x.dogId == d.dogId);
    if (idx != -1) {
      List<Dog> newList = List.from(state.dogs);
      newList[idx] = d;
      state = state.copyWith(dogs: newList);
    } else {
      state = state.copyWith(dogs: [...state.dogs, d]);
    }
  }

  setFlea(String d) {
    Dog dd = Dog(d, true);
    setDog(dd);
  }

  Dog? getDog(String s) {
    int idx = state.dogs.indexWhere((x) => x.dogId == s);
    if (idx != -1) {
      return state.dogs[idx];
    } else {
      return null;
    }
  }
}
