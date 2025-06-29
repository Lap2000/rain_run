import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
class PageState with _$PageState {
  const factory PageState.initial() = _Initial;
  const factory PageState.loading() = _Loading;
  const factory PageState.success() = _Success;
  const factory PageState.failure({required String error}) = _Failure;
}

extension PageStateExtensions on PageState {
  bool get isInitial => this is _Initial;
  bool get isLoading => this is _Loading;
  bool get isFailure => this is _Failure;
  bool get isSuccess => this is _Success;

  String? get getErrorMessage {
    if (isFailure) {
      return (this as _Failure).error;
    }
    return null;
  }
}

abstract class BaseState {
  PageState get pageState;
}
