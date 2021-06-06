enum Direction { UP, DOWN, LEFT, RIGHT }

class SnakeModel {
  int _x = 100;
  int _y = 100;
  int _width = 10;
  int _height = 10;
  Direction _direction = Direction.RIGHT;

  void up() => x -= 10;
  void down() => x += 10;
  void left() => y -= 10;
  void right() => y += 10;

  get x => this._x;

  set x(value) => this._x = value;

  get y => this._y;

  set y(value) => this._y = value;

  get width => this._width;

  set width(value) => this._width = value;

  get height => this._height;

  set height(value) => this._height = value;

  get direction => this._direction;

  set direction(value) => this._direction = value;

  @override
  String toString() {
    return 'Snake [X: $_x, Y: $_y]';
  }
}
