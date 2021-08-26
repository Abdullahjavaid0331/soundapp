import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicApps extends StatelessWidget {
  const MusicApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final audioPlayers = AudioCache();

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(
              audioPlayers: audioPlayers, soundNumber: 1, colors: Colors.red),
          buildKey(
              audioPlayers: audioPlayers,
              soundNumber: 2,
              colors: Colors.yellow),
          buildKey(
              audioPlayers: audioPlayers,
              soundNumber: 1,
              colors: Colors.orange),
          buildKey(
              audioPlayers: audioPlayers, soundNumber: 1, colors: Colors.green),
          buildKey(
              audioPlayers: audioPlayers, soundNumber: 1, colors: Colors.blue),
          buildKey(
              audioPlayers: audioPlayers,
              soundNumber: 1,
              colors: Colors.purple),
        ],
      ),
    );
  }

  Expanded buildKey(
      {required AudioCache audioPlayers,
      required int soundNumber,
      required Color colors}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colors,
        ),
        onPressed: () {
          playSoundMethod(audioPlayers, soundNumber);
        },
        child: const Text(""),
      ),
    );
  }

  void playSoundMethod(AudioCache audioPlayers, int number) =>
      audioPlayers.play('note$number.wav');
}
