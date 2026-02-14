import 'package:flame_audio/flame_audio.dart';

class AudioManager {
  static final AudioManager _instance = AudioManager._internal();
  factory AudioManager() => _instance;
  AudioManager._internal();

  bool _isMusicEnabled = true;
  bool _isSfxEnabled = true;
  double _musicVolume = 0.7;
  double _sfxVolume = 1.0;

  bool get isMusicEnabled => _isMusicEnabled;
  bool get isSfxEnabled => _isSfxEnabled;
  double get musicVolume => _musicVolume;
  double get sfxVolume => _sfxVolume;

  Future<void> initialize() async {
    try {
      await FlameAudio.audioCache.loadAll([
        'music/backsound.mp3',
        'sfx/jeder.mp3',
        'sfx/teliling.mp3',
        'sfx/toet_kowek.mp3',
      ]);
      print('Audio Initialize Successfully');
    } catch (e) {
        print('Error initializing audio: $e');
      }
  }

  void playBackgroundMUsic() {
    if (_isMusicEnabled) {
      try {
        FlameAudio.bgm.play('music/backsound.mp3', volume: _musicVolume);
      } catch (e) {
        print('Error playing backsound: $e');
      }
    }
  }

  void stopBackgroundMusic() {
    try {
      FlameAudio.bgm.pause();
    } catch (e) {
      print('Error when paused backsound: $e');
    }
  }

  void resumeBackgroundMusic() {
    try {
      FlameAudio.bgm.resume();
    } catch (e) {
      print('error resuming backsound: $e');
    }
  }

  void playSfx(String fileName){
    if (_isSfxEnabled) {
      try {
        FlameAudio.play('sfx/$fileName', volume: _sfxVolume);
      } catch (e) {
        print('error playing sfx: $e');
      }
    }
  }

}