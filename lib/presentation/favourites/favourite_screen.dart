import 'package:android_test_app/logic/favourites/favourites_logic.dart';
import 'package:android_test_app/model/joke.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritesScreen extends ConsumerWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favourites = ref.watch(favouritesStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourites",
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: favourites.when(
        data: (jokes) => ListView.builder(
          itemBuilder: (context, index) => _FavouriteJoke(jokes[index]),
          itemCount: jokes.length,
        ),
        empty: () => const Center(
          child: Text("No favourites added"),
        ),
      ),
    );
  }
}

class _FavouriteJoke extends ConsumerWidget {
  const _FavouriteJoke(this.joke);

  final Joke joke;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            joke.value,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            key: ValueKey(joke.id),
            onPressed: () => ref
                .read(favouritesStateProvider.notifier)
                .removeFromFavourites(joke.id),
            child: const Text(
              "Delete",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
