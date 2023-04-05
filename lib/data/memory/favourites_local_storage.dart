import 'package:android_test_app/model/joke.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod/riverpod.dart';

class FavouritesLocalStorage {
  late Box<Joke> box;

  Future<void> init() async {
    box = await Hive.openBox('favourites');
  }

  Future<void> add(Joke joke) async {
    if (!box.values.contains(joke)) {
      await box.put(joke.id, joke);
    }
  }

  Future<void> remove(String id) async {
    await box.delete(id);
  }

  List<Joke> get jokes => box.values.toList();
}

final favouritesLocalStorageProvider = Provider<FavouritesLocalStorage>((ref) {
  return FavouritesLocalStorage();
});
