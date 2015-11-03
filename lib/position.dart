library rushour.position;

class Position {
  /// The horizontal distance relative to the top left position.
  int x;

  /// The vertical distance relative to the top left position.
  int y;

  Position(this.x, this.y);

  operator +(Position other) => new Position(x + other.x, y + other.y);

  operator ==(Position other) => x == other.x && y == other.y;

  toString() => '($x, $y)';
}
