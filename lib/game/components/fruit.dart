import 'dart:math';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../fruit_catcher_game.dart';
import 'basket.dart';

enum FruiType{apple, banana, orange, strawberry}

class Fruit extends PositionComponent with HasGameRef<FruitCatcherGame>, CollisionCallbacks{

}