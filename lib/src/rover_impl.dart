const double maxX = 20.0;
const double maxY = 20.0;

enum Direction { east, west, north, south }

class Rover {
  final String _name;
  double _x;
  double _y;

  Rover(this._name, this._x, this._y);

  void move(Direction direction) {
    switch (direction) {
      case Direction.east:
        {
          if (_x >= maxX) {
            _x = 0.0;
            return;
          }
          _x += 0.5;
          break;
        }
      case Direction.west:
        {
          if (_x <= 0.0) {
            _x = maxX;
            return;
          }
          _x -= 0.5;
          break;
        }
      case Direction.south:
        {
          if (_y <= 0.0) {
            _y = maxY;
            return;
          }
          _y -= 0.5;
          break;
        }
      case Direction.north:
        {
          if (_y >= maxY) {
            _y = 0.0;
            return;
          }
          _y += 0.5;
          break;
        }
    }
  }

  double get x => _x;
  double get y => _y;
  String get name => _name;
}
