import 'package:android_test_app/logic/favourites/favourites_logic.dart';
import 'package:android_test_app/logic/main_screen/jokes_logic.dart';
import 'package:android_test_app/model/joke.dart';
import 'package:android_test_app/presentation/favourites/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(mainScreenStateProvider);

    final joke = state.maybeWhen(
      orElse: () => null,
      data: (joke) => joke,
    );

    final jokeInFavourites = ref.watch(favouritesStateProvider).maybeWhen(
          orElse: () => false,
          data: (data) => joke != null
              ? data.where((element) => element.id == joke.id).isNotEmpty
              : false,
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chuck Jokes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 180,
              width: 150,
              child: Image(
                image: AssetImage('assets/main.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              state.when(
                data: (joke) => joke.value,
                error: () => "Something went wrong",
                loading: () => "Loading",
                start: () => "",
              ),
              style: const TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            state.when(
              data: (joke) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    child: const Text('Dislike'),
                    onPressed: () {
                      _nextJoke(ref);
                    },
                  ),
                  TextButton(
                    child: const Text('Like'),
                    onPressed: () {
                      _nextJoke(ref);
                    },
                  ),
                ],
              ),
              error: () => TextButton(
                child: const Text('Retry'),
                onPressed: () {
                  _nextJoke(ref);
                },
              ),
              loading: () => Container(),
              start: () => TextButton(
                child: const Text('Start'),
                onPressed: () {
                  _nextJoke(ref);
                },
              ),
            ),
            state.maybeWhen(
              orElse: () => Container(),
              data: (joke) => TextButton(
                child: Text(jokeInFavourites
                    ? "Remove from favourites"
                    : "Add to favourites"),
                onPressed: () {
                  _onAddRemoveFavouritesTap(ref, joke, jokeInFavourites);
                },
              ),
            ),
            TextButton(
              child: const Text('Favourites'),
              onPressed: () {
                _onOpenFavouritesScreen(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _nextJoke(WidgetRef ref) {
    ref.read(mainScreenStateProvider.notifier).nextJoke();
  }

  _onAddRemoveFavouritesTap(WidgetRef ref, Joke joke, bool jokeInFavourites) {
    if (jokeInFavourites) {
      ref.read(favouritesStateProvider.notifier).removeFromFavourites(joke.id);
    } else {
      ref.read(favouritesStateProvider.notifier).addToFavourites(joke);
    }
  }

  _onOpenFavouritesScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FavouritesScreen(),
      ),
    );
  }
}
