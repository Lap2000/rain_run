// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyAppState {
  PageState get pageState;

  /// Create a copy of MyAppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyAppStateCopyWith<MyAppState> get copyWith =>
      _$MyAppStateCopyWithImpl<MyAppState>(this as MyAppState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyAppState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState);

  @override
  String toString() {
    return 'MyAppState(pageState: $pageState)';
  }
}

/// @nodoc
abstract mixin class $MyAppStateCopyWith<$Res> {
  factory $MyAppStateCopyWith(
          MyAppState value, $Res Function(MyAppState) _then) =
      _$MyAppStateCopyWithImpl;
  @useResult
  $Res call({PageState pageState});

  $PageStateCopyWith<$Res> get pageState;
}

/// @nodoc
class _$MyAppStateCopyWithImpl<$Res> implements $MyAppStateCopyWith<$Res> {
  _$MyAppStateCopyWithImpl(this._self, this._then);

  final MyAppState _self;
  final $Res Function(MyAppState) _then;

  /// Create a copy of MyAppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
  }) {
    return _then(_self.copyWith(
      pageState: null == pageState
          ? _self.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  /// Create a copy of MyAppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get pageState {
    return $PageStateCopyWith<$Res>(_self.pageState, (value) {
      return _then(_self.copyWith(pageState: value));
    });
  }
}

/// @nodoc

class _MyAppState implements MyAppState {
  _MyAppState({required this.pageState});

  @override
  final PageState pageState;

  /// Create a copy of MyAppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyAppStateCopyWith<_MyAppState> get copyWith =>
      __$MyAppStateCopyWithImpl<_MyAppState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyAppState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState);

  @override
  String toString() {
    return 'MyAppState(pageState: $pageState)';
  }
}

/// @nodoc
abstract mixin class _$MyAppStateCopyWith<$Res>
    implements $MyAppStateCopyWith<$Res> {
  factory _$MyAppStateCopyWith(
          _MyAppState value, $Res Function(_MyAppState) _then) =
      __$MyAppStateCopyWithImpl;
  @override
  @useResult
  $Res call({PageState pageState});

  @override
  $PageStateCopyWith<$Res> get pageState;
}

/// @nodoc
class __$MyAppStateCopyWithImpl<$Res> implements _$MyAppStateCopyWith<$Res> {
  __$MyAppStateCopyWithImpl(this._self, this._then);

  final _MyAppState _self;
  final $Res Function(_MyAppState) _then;

  /// Create a copy of MyAppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageState = null,
  }) {
    return _then(_MyAppState(
      pageState: null == pageState
          ? _self.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  /// Create a copy of MyAppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get pageState {
    return $PageStateCopyWith<$Res>(_self.pageState, (value) {
      return _then(_self.copyWith(pageState: value));
    });
  }
}

// dart format on
