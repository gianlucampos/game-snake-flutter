import 'package:flutter/material.dart';
import 'package:snake/food/food_model.dart';

//Representa a posicao da comida na tela
class FoodWidget extends StatelessWidget {
  final FoodModel food;

  const FoodWidget({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: food.x,
          left: food.y,
          height: 10,
          width: 10,
          child: Container(color: Colors.red),
        )
      ],
    );
  }
}
