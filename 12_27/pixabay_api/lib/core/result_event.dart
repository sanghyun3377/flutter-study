import 'package:freezed_annotation/freezed_annotation.dart';
part 'result_event.freezed.dart';

@freezed
sealed class ResultEvent with _$ResultEvent {
  const factory ResultEvent.showSnackBar(String message) = ShowSnackBar;
  const factory ResultEvent.showDialog(String message) = ShowDialog;
}
