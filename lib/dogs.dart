import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs.freezed.dart';

enum DogType { shiba, pittie }

@freezed
class DogState with _$DogState {
  const factory DogState(List<Dog> dogs) = _DogState;
}

@freezed
class Dog with _$Dog {
  const factory Dog(String dogId, bool flea) = _Dog;
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

  Future<List<String>> pageFetch(int offset) async {
    final List<String> nextUsersList =
        List.generate(5, (int index) => ' - $offset$index');
    return nextUsersList;
  }
}

class ShibaNotifier extends DogStateNotifier {
  ShibaNotifier() : super(const DogState([])) {
    setDog(const Dog("one", false));
    setDog(const Dog("two", false));
  }
}

class PittieNotifier extends DogStateNotifier {
  PittieNotifier() : super(const DogState([]));
}
