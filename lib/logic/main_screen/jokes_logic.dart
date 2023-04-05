import 'package:android_test_app/data/network/api_service.dart';
import 'package:android_test_app/logic/main_screen/main_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreenStateNotifier extends StateNotifier<MainScreenState> {
  MainScreenStateNotifier(this.api) : super(MainScreenState.start());

  final ApiService api;

  Future<void> nextJoke() async {
    state = MainScreenState.loading();
    try {
      var joke = await api.getJoke();
      state = MainScreenState.data(joke: joke);
    } catch (_) {
      state = MainScreenState.error();
    }
  }
}

final mainScreenStateProvider =
    StateNotifierProvider<MainScreenStateNotifier, MainScreenState>((ref) {
  return MainScreenStateNotifier(ref.read(apiProvider));
});
