// ignore_for_file: invalid_annotation_target
import 'package:android_test_app/model/joke.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_state.freezed.dart';

@freezed
class MainScreenState with _$MainScreenState {
  factory MainScreenState.data({
    required Joke joke,
  }) = Data;

  factory MainScreenState.error() = Error;

  factory MainScreenState.start() = Start;

  factory MainScreenState.loading() = Loading;
}
