import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Notes(),
          ),
        ),
      ),
    );
  }
}

Widget keyBuilder({int track, Color color}) {
  return Expanded(
    child: RaisedButton(
      onPressed: () {
        playTrack(track);
      },
      child: SizedBox.expand(),
      color: color,
    ),
  );
}

void playTrack(int track) {
  final player = AudioCache();
  player.play("note$track.wav");
}

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        keyBuilder(track: 1, color: Colors.red),
        keyBuilder(track: 2, color: Colors.orange),
        keyBuilder(track: 3, color: Colors.yellow),
        keyBuilder(track: 4, color: Colors.green),
        keyBuilder(track: 5, color: Colors.teal),
        keyBuilder(track: 6, color: Colors.blue),
        keyBuilder(track: 7, color: Colors.purple),
      ],
    );
  }
}
