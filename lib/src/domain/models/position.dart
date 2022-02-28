import 'package:equatable/equatable.dart';

class Position extends Equatable {
  final int x; // column
  final int y; // row

  const Position({
    required this.x,
    required this.y,
  });

  @override
  List<Object?> get props => [x, y];
}
