import 'package:android_test_app/data/memory/favourites_local_storage.dart';
import 'package:android_test_app/logic/favourites/favourites_logic.dart';
import 'package:android_test_app/model/joke.dart';
import 'package:android_test_app/presentation/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  final container = ProviderContainer();

  await initHive(container);

  container.read(favouritesStateProvider.notifier).init();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(home: const MainScreen()),
    ),
  );
}

Future<void> initHive(ProviderContainer container) async {
  await Hive.initFlutter();
  Hive.registerAdapter(JokeAdapter());
  await container.read(favouritesLocalStorageProvider).init();
}
