import 'dart:math';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../fruit_catcher_game.dart';
import 'basket.dart';

enum FruiType{apple, banana, orange, strawberry}

class Fruit extends PositionComponent with HasGameRef<FruitCatcherGame>, CollisionCallbacks{
  final FruiType type;
  final double fallSpeed = 200;
  final Random random = Random();

  Fruit({super.position})
    : type = FruiType.values[Random().nextInt(FruiType.values.length)], super(size: Vector2.all(40));


  @override
  Future<void> onLoad() async {
    await super.onLoad();
    anchor = Anchor.center;
    add(CircleHitbox());
  }
  
}