import 'package:flutter/material.dart';

import 'snake_model.dart';

//Representa a posicao da cobra na tela
class SnakeWidget extends StatelessWidget {
  final SnakeModel snake;

  const SnakeWidget({Key? key, required this.snake}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: snake.x,
          left: snake.y,
          height: snake.height,
          width: snake.width,
          child: Container(color: Colors.green),
        )
      ],
    );
  }
}
