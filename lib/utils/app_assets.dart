abstract class AppAssets {
  static const String _imagePath = 'assets/images/';
  static const String _audioPath = 'audios/';

  static String get background => '${_imagePath}background.png';
  static String get pixelButton => '${_imagePath}button.png';
  static String get pixelBox => '${_imagePath}box.png';
  static String get iconPlay => '${_imagePath}play_sound.png';
  static String get iconPause => '${_imagePath}pause_sound.png';
  static String get audioStart => '${_audioPath}start.mp3';
}
