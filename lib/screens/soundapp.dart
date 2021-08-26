import 'package:flutter/material.dart';
import 'package:soundapp/screens/music_apps.dart';

class SoundApp extends StatelessWidget {
  const SoundApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: MusicApps(),
    );
  }
}
