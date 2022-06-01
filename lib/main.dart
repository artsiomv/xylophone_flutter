import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int button) {
    final player = AudioCache();
    player.play('note$button.wav');
  }

  Expanded makeSound({Color color, int noteNumber}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(noteNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              makeSound(color: Colors.red, noteNumber: 1),
              makeSound(color: Colors.orange, noteNumber: 2),
              makeSound(color: Colors.yellow, noteNumber: 3),
              makeSound(color: Colors.green, noteNumber: 4),
              makeSound(color: Colors.lightBlue, noteNumber: 5),
              makeSound(color: Colors.blue, noteNumber: 6),
              makeSound(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
