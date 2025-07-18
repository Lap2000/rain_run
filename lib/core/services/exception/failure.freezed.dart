// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Failure {
  String? get msg;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @override
  String toString() {
    return 'Failure(msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) =
      _$FailureCopyWithImpl;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_self.copyWith(
      msg: freezed == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ServerFailure implements Failure {
  const ServerFailure({this.msg});

  @override
  final String? msg;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @override
  String toString() {
    return 'Failure.server(msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) _then) =
      _$ServerFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(ServerFailure(
      msg: freezed == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ClientFailure implements Failure {
  const ClientFailure({this.msg});

  @override
  final String? msg;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientFailureCopyWith<ClientFailure> get copyWith =>
      _$ClientFailureCopyWithImpl<ClientFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @override
  String toString() {
    return 'Failure.client(msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $ClientFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $ClientFailureCopyWith(
          ClientFailure value, $Res Function(ClientFailure) _then) =
      _$ClientFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class _$ClientFailureCopyWithImpl<$Res>
    implements $ClientFailureCopyWith<$Res> {
  _$ClientFailureCopyWithImpl(this._self, this._then);

  final ClientFailure _self;
  final $Res Function(ClientFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(ClientFailure(
      msg: freezed == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class NetworkFailure implements Failure {
  const NetworkFailure({this.msg});

  @override
  final String? msg;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      _$NetworkFailureCopyWithImpl<NetworkFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @override
  String toString() {
    return 'Failure.network(msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $NetworkFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) _then) =
      _$NetworkFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._self, this._then);

  final NetworkFailure _self;
  final $Res Function(NetworkFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(NetworkFailure(
      msg: freezed == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class CacheFailure implements Failure {
  const CacheFailure({this.msg});

  @override
  final String? msg;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CacheFailureCopyWith<CacheFailure> get copyWith =>
      _$CacheFailureCopyWithImpl<CacheFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CacheFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @override
  String toString() {
    return 'Failure.cache(msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $CacheFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) _then) =
      _$CacheFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class _$CacheFailureCopyWithImpl<$Res> implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(this._self, this._then);

  final CacheFailure _self;
  final $Res Function(CacheFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(CacheFailure(
      msg: freezed == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class NoConnectionFailure implements Failure {
  const NoConnectionFailure({this.msg = 'No internet connection'});

  @override
  @JsonKey()
  final String? msg;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoConnectionFailureCopyWith<NoConnectionFailure> get copyWith =>
      _$NoConnectionFailureCopyWithImpl<NoConnectionFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoConnectionFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @override
  String toString() {
    return 'Failure.noConnection(msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $NoConnectionFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $NoConnectionFailureCopyWith(
          NoConnectionFailure value, $Res Function(NoConnectionFailure) _then) =
      _$NoConnectionFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class _$NoConnectionFailureCopyWithImpl<$Res>
    implements $NoConnectionFailureCopyWith<$Res> {
  _$NoConnectionFailureCopyWithImpl(this._self, this._then);

  final NoConnectionFailure _self;
  final $Res Function(NoConnectionFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(NoConnectionFailure(
      msg: freezed == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class UnknownFailure implements Failure {
  const UnknownFailure({this.msg = 'Unknown error occurred'});

  @override
  @JsonKey()
  final String? msg;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnknownFailureCopyWith<UnknownFailure> get copyWith =>
      _$UnknownFailureCopyWithImpl<UnknownFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @override
  String toString() {
    return 'Failure.unknow(msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $UnknownFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(
          UnknownFailure value, $Res Function(UnknownFailure) _then) =
      _$UnknownFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._self, this._then);

  final UnknownFailure _self;
  final $Res Function(UnknownFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(UnknownFailure(
      msg: freezed == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
