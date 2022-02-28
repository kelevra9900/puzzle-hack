enum MoveTo { up, down, left, right }

extension MoveToExt on String {
  /// hable the keyboard events and return
  /// the direction for the move
  MoveTo? get moveTo {
    switch (this) {
      case "W":
      case "Arrow Up":
        return MoveTo.up;
      case "S":
      case "Arrow Down":
        return MoveTo.down;
      case "A":
      case "Arrow Left":
        return MoveTo.left;
      case "D":
      case "Arrow Right":
        return MoveTo.right;
    }
    return null;
  }
}
