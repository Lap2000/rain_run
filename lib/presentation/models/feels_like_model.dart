import 'package:equatable/equatable.dart';

class FeelsLikeModel extends Equatable {
  const FeelsLikeModel({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });

  final double? day;
  final double? night;
  final double? eve;
  final double? morn;

  @override
  List<Object?> get props => <Object?>[day, night, eve, morn];

  // factory FeelsLikeData.fromJson(Map<String, dynamic> json) => FeelsLikeData(
  //       day: _kToC(json['day']),
  //       night: _kToC(json['night']),
  //       eve: _kToC(json['eve']),
  //       morn: _kToC(json['morn']),
  //     );

  // static double? _kToC(dynamic k) => (k is num) ? (k - 273.15).toDouble() : null;
}
