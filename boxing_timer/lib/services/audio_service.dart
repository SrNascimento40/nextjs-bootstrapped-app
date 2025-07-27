import 'package:audioplayers/audioplayers.dart';

class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioService._internal();

  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playGongStart() async {
    try {
      await _audioPlayer.play(AssetSource('audio/gong_start.mp3'));
    } catch (e) {
      print('Error playing start gong: $e');
    }
  }

  Future<void> playGongRoundEnd() async {
    try {
      await _audioPlayer.play(AssetSource('audio/gong_round_end.mp3'));
    } catch (e) {
      print('Error playing round end gong: $e');
    }
  }

  Future<void> playGongIntervalEnd() async {
    try {
      await _audioPlayer.play(AssetSource('audio/gong_interval_end.mp3'));
    } catch (e) {
      print('Error playing interval end gong: $e');
    }
  }

  Future<void> dispose() async {
    await _audioPlayer.dispose();
  }
}
