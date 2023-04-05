// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:android_test_app/data/memory/favourites_local_storage.dart';
import 'package:android_test_app/logic/favourites/favourites_state.dart';
import 'package:android_test_app/model/joke.dart';
import 'package:riverpod/riverpod.dart';

class FavouritesStateNotifier extends StateNotifier<FavouritesState> {
  FavouritesStateNotifier(this.favouritesLocalStorage)
      : super(FavouritesState.empty());
  final FavouritesLocalStorage favouritesLocalStorage;

  void init() {
    final jokes = favouritesLocalStorage.jokes;
    state = FavouritesState.data(jokes: jokes);
  }

  void addToFavourites(Joke joke) {
    final jokes = favouritesLocalStorage.jokes;
    jokes.add(joke);
    state = FavouritesState.data(jokes: jokes);
    favouritesLocalStorage.add(joke);
  }

  void removeFromFavourites(String id) {
    if (favouritesLocalStorage.box.containsKey(id)) {
      if (favouritesLocalStorage.jokes.length == 1) {
        state = FavouritesState.empty();
      } else {
        final jokes = favouritesLocalStorage.jokes;
        jokes.removeWhere(
          (element) => element.id == id,
        );
        state = FavouritesState.data(jokes: jokes);
      }
      favouritesLocalStorage.remove(id);
    }
  }
}

final favouritesStateProvider =
    StateNotifierProvider<FavouritesStateNotifier, FavouritesState>((ref) {
  return FavouritesStateNotifier(ref.read(favouritesLocalStorageProvider));
});
