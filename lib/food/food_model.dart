class FoodModel {
  int _x = 50;
  int _y = 50;

  get x => this._x;

  set x(value) => this._x = value;

  get y => this._y;

  set y(value) => this._y = value;

  @override
  String toString() => 'FoodModel [X $_x, Y $_y]';
}
