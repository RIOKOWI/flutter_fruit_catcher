import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:game/game/components/basket.dart';
import 'package:game/game/managers/audio_manager.dart';

class FruitCatcherGame extends FlameGame with PanDetector, HasCollisionDetection{
  late Basket basket;
  late TextComponent scoreText;
  final Random random = Random();
  double fruitSpawnTimer = 0 ;
  final double fruitSpawnInterval = 1.5 ;

  @override
  Color backgroundColor() => const Color(0xFF87CEEB);


  final ValueNotifier<int> scoreNotifier = ValueNotifier<int>(0);

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    AudioManager().playBackgroundMUsic();
  }
}