import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/utils/app_assets.dart';

class ButtonMusic extends StatefulWidget {
  const ButtonMusic({super.key});

  @override
  State<ButtonMusic> createState() => _ButtonMusicState();
}

class _ButtonMusicState extends State<ButtonMusic> {
  late final AudioPlayer _player;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer()..setReleaseMode(ReleaseMode.loop);
    _player.setSource(AssetSource(AppAssets.audioStart));
  }

  Future<void> _togglePlay() async {
    _isPlaying ? await _player.pause() : await _player.resume();
    setState(() => _isPlaying = !_isPlaying);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: IconButton(
        icon: Image.asset(
          _isPlaying ? AppAssets.iconPlay : AppAssets.iconPause,
          width: 42,
          height: 42,
        ),
        onPressed: _togglePlay,
      ),
    );
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
}
