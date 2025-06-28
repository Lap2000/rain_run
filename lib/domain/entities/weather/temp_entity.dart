import 'package:equatable/equatable.dart';

class TempEntity extends Equatable {
  const TempEntity({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  });

  final double? day;
  final double? min;
  final double? max;
  final double? night;
  final double? eve;
  final double? morn;

  @override
  List<Object?> get props => <Object?>[day, min, max, night, eve, morn];

  // factory TempData.fromJson(Map<String, dynamic> json) => TempData(
  //       day: _kToC(json['day']),
  //       min: _kToC(json['min']),
  //       max: _kToC(json['max']),
  //       night: _kToC(json['night']),
  //       eve: _kToC(json['eve']),
  //       morn: _kToC(json['morn']),
  //     );

  // static double? _kToC(dynamic k) => (k is num) ? (k - 273.15).toDouble() : null;
}
