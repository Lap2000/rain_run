import 'package:equatable/equatable.dart';

class Rain1hEntity extends Equatable {
  const Rain1hEntity({
    this.rain1h,
  });

  final double? rain1h;

  @override
  List<Object?> get props => <Object?>[
        rain1h,
      ];
}
