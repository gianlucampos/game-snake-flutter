import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snake/food/food_model.dart';
import 'package:snake/food/food_widget.dart';
import 'package:snake/snake/snake_keyboard.dart';
import 'package:snake/snake/snake_model.dart';
import 'package:snake/snake/snake_widget.dart';

class CanvasPage extends StatefulWidget {
  @override
  _CanvasPageState createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage> {
  final SnakeModel snake = new SnakeModel();
  final FoodModel food = new FoodModel();
  int score = 0;

  upSnake() {
    setState(() {
      snake.up();
    });
  }

  downSnake() {
    setState(() {
      snake.down();
    });
  }

  leftSnake() {
    setState(() {
      snake.left();
    });
  }

  rightSnake() {
    setState(() {
      snake.right();
    });
  }

  randomizeFood() {
    int newX = new Random().nextInt(300);
    int newY = new Random().nextInt(300);
    int restoX = newX % 10;
    int restoY = newY % 10;
    setState(() {
      food.x = newX - restoX;
      food.y = newY - restoY;
    });
  }

  @override
  void initState() {
    randomizeFood();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool outOfBounds =
        snake.x > 471 || snake.x < 0 || snake.y > 471 || snake.y < 0;
    bool foodEated = snake.x == food.x && snake.y == food.y;
    if (foodEated) {
      score++;
      randomizeFood();
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 20),
        outOfBounds
            ? Text('Game Over \n Press R to Restart')
            : Text(
                'Score: ' + score.toString(),
                style: TextStyle(color: Colors.blue),
              ),
        SizedBox(width: 20),
        Flexible(
          child: Container(
            height: 500,
            width: 500,
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.fromBorderSide(
                  BorderSide(color: Colors.black, width: 10)),
            ),
            child: Stack(
              children: [
                FoodWidget(food: food),
                SnakeKeyboardWidget(
                  child: SnakeWidget(snake: snake),
                  upDetected: upSnake,
                  downDetected: downSnake,
                  leftDetected: leftSnake,
                  rightDetected: rightSnake,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
