sealed class PageState {
  const PageState();
  const factory PageState.initial() = _Initial;
  const factory PageState.loading() = _Loading;
  const factory PageState.success() = _Success;
  const factory PageState.failure({required String error}) = _Failure;
}

class _Initial extends PageState {
  const _Initial();
}

class _Loading extends PageState {
  const _Loading();
}

class _Success extends PageState {
  const _Success();
}

class _Failure extends PageState {
  const _Failure({required this.error});
  final String error;
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
