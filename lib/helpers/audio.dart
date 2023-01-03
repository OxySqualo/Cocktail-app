import 'package:flame_audio/flame_audio.dart';

loadMusic() async {
  await FlameAudio.audioCache.load('Sound_14667.mp3');
}

checkFoneMusic(music) {
  if (music == true) {
    FlameAudio.bgm.play('Sound_14667.mp3', volume: .2);
  } else {
    FlameAudio.bgm.stop();
  }
}
