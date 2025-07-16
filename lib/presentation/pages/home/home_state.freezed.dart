// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  PageState get pageState;
  Failure? get error;
  WeatherModel? get weather;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, error, weather);

  @override
  String toString() {
    return 'HomeState(pageState: $pageState, error: $error, weather: $weather)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call({PageState pageState, Failure? error, WeatherModel? weather});

  $PageStateCopyWith<$Res> get pageState;
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? error = freezed,
    Object? weather = freezed,
  }) {
    return _then(_self.copyWith(
      pageState: null == pageState
          ? _self.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      weather: freezed == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get pageState {
    return $PageStateCopyWith<$Res>(_self.pageState, (value) {
      return _then(_self.copyWith(pageState: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc

class _HomeState implements HomeState {
  const _HomeState({required this.pageState, this.error, this.weather});

  @override
  final PageState pageState;
  @override
  final Failure? error;
  @override
  final WeatherModel? weather;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, error, weather);

  @override
  String toString() {
    return 'HomeState(pageState: $pageState, error: $error, weather: $weather)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call({PageState pageState, Failure? error, WeatherModel? weather});

  @override
  $PageStateCopyWith<$Res> get pageState;
  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageState = null,
    Object? error = freezed,
    Object? weather = freezed,
  }) {
    return _then(_HomeState(
      pageState: null == pageState
          ? _self.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      weather: freezed == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get pageState {
    return $PageStateCopyWith<$Res>(_self.pageState, (value) {
      return _then(_self.copyWith(pageState: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

// dart format on
