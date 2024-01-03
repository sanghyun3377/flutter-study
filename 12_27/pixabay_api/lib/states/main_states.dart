import 'package:pixabay_api/model/hits.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_states.freezed.dart';
part 'main_states.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<Hits> imagedata,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) =>
      _$MainStateFromJson(json);
}
