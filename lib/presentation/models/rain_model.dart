import 'package:equatable/equatable.dart';

class Rain1hModel extends Equatable {
  const Rain1hModel({
    this.rain1h,
  });

  final double? rain1h;

  @override
  List<Object?> get props => <Object?>[
        rain1h,
      ];
}
