import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure implements Exception {
  const factory Failure.server({String? msg}) = ServerFailure;
  const factory Failure.client({String? msg}) = ClientFailure;
  const factory Failure.network({String? msg}) = NetworkFailure;
  const factory Failure.cache({String? msg}) = CacheFailure;
  const factory Failure.noConnection({@Default('No internet connection') String? msg}) =
      NoConnectionFailure;
  const factory Failure.unknow({@Default('Unknown error occurred') String? msg}) = UnknownFailure;
}
