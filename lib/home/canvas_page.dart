import 'package:flutter/material.dart';
import 'package:snake/snake/snake_model.dart';
import 'package:snake/snake/snake_keyboard.dart';
import 'package:snake/snake/snake_widget.dart';

import '../snake/snake_widget.dart';

class CanvasPage extends StatefulWidget {
  @override
  _CanvasPageState createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage> {
  final SnakeModel snakeController = new SnakeModel();

  upSnake() {
    setState(() {
      snakeController.up();
    });
  }

  downSnake() {
    setState(() {
      snakeController.down();
    });
  }

  leftSnake() {
    setState(() {
      snakeController.left();
    });
  }

  rightSnake() {
    setState(() {
      snakeController.right();
    });
  }

  @override
  Widget build(BuildContext context) {
    print(snakeController);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border:
              Border.fromBorderSide(BorderSide(color: Colors.black, width: 10)),
        ),
        child: SnakeKeyboardWidget(
          child: SnakeWidget(snake: snakeController),
          upDetected: upSnake,
          downDetected: downSnake,
          leftDetected: leftSnake,
          rightDetected: rightSnake,
        ),
      ),
    );
  }
}
