import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final colorToSoundMap = {
    Colors.red:'note1.wav',
    Colors.orange:'note2.wav',
    Colors.yellow:'note3.wav',
    Colors.green:'note4.wav',
    Colors.teal:'note5.wav',
    Colors.blue:'note6.wav',
    Colors.purple:'note7.wav',
  };

  final audioCache = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Notebook"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: colorToSoundMap.keys.map(noteButton).toList(),
        ),
      ),
    );
  }

  Widget noteButton(MaterialColor color) {
    return Expanded(
      child: FlatButton(
        onPressed: () => audioCache.play(colorToSoundMap[color]),
        color: color,
      ),
    );
  }
}
