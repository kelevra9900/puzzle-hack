import 'package:equatable/equatable.dart';
import 'package:puzzle_hack/src/domain/models/position.dart';

class Tile extends Equatable {
  final int value;
  final Position position;
  final Position correctPosition;

  const Tile({
    required this.value,
    required this.position,
    required this.correctPosition,
  });

  Tile move(Position newPosition) {
    return Tile(
      value: value,
      correctPosition: correctPosition,
      position: newPosition,
    );
  }

  @override
  List<Object?> get props => [
        position,
        correctPosition,
        value,
      ];
}
